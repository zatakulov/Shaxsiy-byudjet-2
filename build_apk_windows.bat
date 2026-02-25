@echo off
setlocal
echo === Shaxsiy Byudjet APK build (Windows) ===
where flutter >nul 2>nul
if errorlevel 1 (
  echo [XATO] Flutter topilmadi. Flutter SDK ni urnating va PATH ga qushing.
  pause
  exit /b 1
)

cd /d "%~dp0shaxsiy_byudjet_flutter_v2"
if not exist android (
  echo Android platform folder yo'q. Yaratilmoqda...
  flutter create --platforms=android .
  if errorlevel 1 goto :err
)

flutter pub get
if errorlevel 1 goto :err

flutter build apk --release
if errorlevel 1 goto :err

echo.
echo TAYYOR APK:
echo %cd%\build\app\outputs\flutter-apk\app-release.apk
pause
exit /b 0

:err
echo [XATO] Build jarayonida xatolik yuz berdi.
pause
exit /b 1
