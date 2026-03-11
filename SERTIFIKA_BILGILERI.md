# Yıldız Rehberi - Sertifika ve Keystore Bilgileri

> **UYARI: Bu dosyayı asla silmeyin! Keystore kaybedilirse Google Play'e güncelleme yüklenemez!**

---

## Aktif Upload Keystore (8 Mart 2026)

| Bilgi | Değer |
|---|---|
| **Dosya Adı** | `upload-key-2026.jks` |
| **Dosya Yolu** | `android/app/keystore/upload-key-2026.jks` |
| **Alias** | `upload` |
| **Store Password** | `Benalan.1` |
| **Key Password** | `Benalan.1` |
| **Oluşturma Tarihi** | 8 Mart 2026 |
| **Geçerlilik** | 2053'e kadar (10000 gün) |
| **Algoritma** | RSA 2048-bit, SHA256withRSA |
| **SHA-1** | `FA:A7:E2:56:9C:34:31:E7:AE:83:22:8F:4F:F4:BC:11:A5:D3:5D:DD` |
| **SHA-256** | `76:AF:C3:B1:20:3F:FD:E4:8A:F4:ED:27:87:D3:97:B7:CD:2E:90:EC:6D:11:CE:3F:58:0E:0D:86:6D:C3:FC:D6` |
| **Sertifika Sahibi** | CN=Alan Inal, OU=Yildiz Rehberi, O=Yildiz Rehberi, L=Ankara, ST=Ankara, C=TR |

## PEM Sertifika Dosyası

| Bilgi | Değer |
|---|---|
| **Dosya** | `android/app/keystore/upload-cert-2026.pem` |
| **Kullanım** | Google Play Console'a yüklendi (8 Mart 2026) |

## Google Play Console - App Signing Key

| Bilgi | Değer |
|---|---|
| **SHA-256** | `D9:4D:F8:5F:A4:A8:D0:7A:7F:3F:24:3B:78:9E:09:B3:A3:10:3E:8A:8F:9C:2F:98:6C:42:16:56:8B:B0:4A:38` |
| **Not** | Bu Google'ın kendi imzalama anahtarıdır, sizin oluşturmanız gerekmez |

## Yapılandırma Dosyaları

- **key.properties**: `android/key.properties`
- **build.gradle**: `android/app/build.gradle` (signingConfigs → release)

## Build Komutu

### Yöntem 1: Build Script (Önerilen - Java hatasını önler)

```powershell
cd C:\Users\win10\Desktop\astroloji\astroloji-3
.\build-release.ps1
```

### Yöntem 2: Manuel

> **Not:** "supplied javaHome invalid" hatası alırsanız: `C:\Program Files\Eclipse Adoptium\jdk-17.0.18.8-hotspot` klasörü bozuk olabilir (sadece lib var, bin yok). Yeniden adlandırın: `jdk-17.0.18.8-hotspot_broken`

```bash
cd C:\Users\win10\Desktop\astroloji\astroloji-3 && flutter clean && flutter pub get && flutter build appbundle --release
```

## AAB Çıktı Yolu

```
build\app\outputs\bundle\release\app-release.aab
```

---

## Eski Keystore'lar (Referans - Artık Kullanılmıyor)

| Dosya | Tarih | Alias | SHA-256 |
|---|---|---|---|
| `yildiz-rehberi-key.jks` | 26 Şubat 2026 | `yildiz-rehberi` | `55:15:AD:22:...` |
| `yildiz_rehberi.jks` | 1 Mart 2026 | `yildizrehberi` | `A1:2D:61:4B:...` |
| `upload-keystore.jks` | 1 Mart 2026 | `upload` | `CF:10:47:EB:...` |

---

## Önemli Notlar

1. **Keystore dosyasını ASLA silmeyin** - Kaybederseniz Google Play'e güncelleme yükleyemezsiniz
2. **Git'te kalıcı olarak takip ediliyor** - `.gitignore`'dan çıkarıldı
3. **Google Play Console sıfırlama**: 8 Mart 2026'da "Yükleme anahtarı sıfırlama" talebi gönderildi
4. **Package Name**: `com.yildizrehberi.yildiz_rehberi`
5. **Application ID**: `com.yildizrehberi.yildiz_rehberi`
