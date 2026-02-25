#!/usr/bin/env bash
set -e
echo "=== Shaxsiy Byudjet APK build (Linux/Mac) ==="

if ! command -v flutter >/dev/null 2>&1; then
  echo "[XATO] Flutter topilmadi. Flutter SDK ni o'rnating va PATH ga qo'shing."
  exit 1
fi

cd "$(dirname "$0")/shaxsiy_byudjet_flutter_v2"

if [ ! -d android ]; then
  echo "Android platform folder yo'q. Yaratilmoqda..."
  flutter create --platforms=android .
fi

flutter pub get
flutter build apk --release

echo
echo "TAYYOR APK:"
echo "$(pwd)/build/app/outputs/flutter-apk/app-release.apk"
