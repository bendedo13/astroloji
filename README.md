# Yıldız Rehberi

Günlük burç yorumları ve astroloji rehberi uygulaması.

## Özellikler

- 12 burç için günlük yorumlar
- Temiz ve modern arayüz
- Çevrimdışı çalışma
- Google Play politikalarına uyumlu
- Gizlilik politikası ve kullanım koşulları sayfaları

## Mimari

Uygulama Clean Architecture prensiplerine göre yapılandırılmıştır:

```
lib/
├── core/
│   ├── constants/
│   └── theme/
├── features/
│   ├── home/
│   │   └── presentation/
│   ├── settings/
│   │   └── presentation/
│   └── zodiac/
│       ├── data/
│       ├── domain/
│       └── presentation/
└── main.dart
```

## Kurulum

```bash
flutter pub get
flutter run
```

## Gereksinimler

- Flutter SDK 3.0.0 veya üzeri
- Dart 3.0.0 veya üzeri
