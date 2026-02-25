# APK build (tez usullar)

Ushbu paketda Flutter SDK yo‘q bo‘lgani uchun bu muhitda APK compile qilinmadi.
Lekin quyidagi 3 usuldan biri bilan **APK avtomatik build** qilasiz:

## 1) Windows (eng oson)
`build_apk_windows.bat` faylini ishga tushiring.

Talab qilinadi:
- Flutter SDK
- Android Studio (Android SDK)
- USB debugging yoki emulator

## 2) Linux/Mac
`build_apk.sh` ni ishga tushiring:
```bash
bash build_apk.sh
```

## 3) GitHub Actions (cloud build)
Repo ga yuklang va **Actions** bo‘limidan workflow ni ishga tushiring.
Build tugagach APK artifact sifatida chiqadi.

Workflow:
- `.github/workflows/android-apk.yml`

## Eslatma
Loyiha ichida `android/` papka bo‘lmasa workflow va scriptlar `flutter create --platforms=android .` bilan generatsiya qiladi.
