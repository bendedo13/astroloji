# Keystore Oluşturma Rehberi

## Seçenek 1: Java Yükleyip Keytool Kullanma

### Adım 1: Java JDK İndirin
https://www.oracle.com/java/technologies/downloads/#jdk17-windows
veya
https://adoptium.net/ (Daha kolay)

### Adım 2: Java'yı Yükleyin
- İndirdiğiniz .exe dosyasını çalıştırın
- Varsayılan ayarlarla yükleyin

### Adım 3: CMD'yi Yeniden Açın ve Komutu Çalıştırın
```bash
keytool -genkey -v -keystore C:\Users\win10\yildiz-rehberi-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias yildiz-rehberi
```

Sorulacak bilgiler:
- Keystore şifresi: (güçlü bir şifre girin, kaydedin!)
- Adınız Soyadınız: Yildiz Rehberi
- Organizasyon: Yildiz Rehberi
- Şehir: Istanbul
- Eyalet: Istanbul
- Ülke kodu: TR

---

## Seçenek 2: Android Studio Kullanma (ÖNERİLEN - EN KOLAY)

### Adım 1: Android Studio İndirin
https://developer.android.com/studio

### Adım 2: Android Studio'yu Açın
- "Open an Existing Project" seçin
- `C:\Users\win10\Desktop\astroloji\android` klasörünü seçin

### Adım 3: Keystore Oluşturun
1. Üst menüden: Build > Generate Signed Bundle / APK
2. "Android App Bundle" seçin, Next
3. "Create new..." butonuna tıklayın
4. Key store path: `C:\Users\win10\yildiz-rehberi-key.jks`
5. Password: Güçlü bir şifre girin (kaydedin!)
6. Alias: yildiz-rehberi
7. Validity: 25 (yıl)
8. Certificate bilgilerini doldurun
9. OK'e tıklayın

---

## Seçenek 3: Flutter ile Debug Keystore Kullanma (SADECE TEST İÇİN)

Bu yöntem sadece test için kullanılabilir, production için uygun değil!

```bash
# Debug keystore zaten var
# Şu dosyayı kullanabilirsiniz:
C:\Users\win10\.android\debug.keystore
```

key.properties dosyasına şunu yazın:
```
storePassword=android
keyPassword=android
keyAlias=androiddebugkey
storeFile=C:/Users/win10/.android/debug.keystore
```

**UYARI**: Bu yöntem sadece test içindir. Play Store'a yüklemek için kendi keystore'unuzu oluşturmalısınız!

---

## Seçenek 4: Online Keystore Generator (HIZLI)

1. https://keystore-explorer.org/downloads.html adresinden KeyStore Explorer indirin
2. Programı açın
3. File > New > New KeyStore
4. JKS seçin
5. Tools > Generate Key Pair
6. RSA, 2048 bit seçin
7. Bilgileri doldurun
8. Kaydedin: `C:\Users\win10\yildiz-rehberi-key.jks`

---

## Hangi Yöntemi Seçmeliyim?

- **En Kolay**: Seçenek 2 (Android Studio)
- **En Hızlı**: Seçenek 3 (Debug keystore - sadece test için)
- **En Profesyonel**: Seçenek 1 (Keytool)
- **Alternatif**: Seçenek 4 (KeyStore Explorer)

## Keystore Oluşturduktan Sonra

`android/key.properties` dosyasını düzenleyin:
```
storePassword=SIZIN_SIFRENIZ
keyPassword=SIZIN_SIFRENIZ
keyAlias=yildiz-rehberi
storeFile=C:/Users/win10/yildiz-rehberi-key.jks
```

Sonra APK oluşturun:
```bash
flutter build appbundle --release
```
