# Google Play Store Yayınlama Kontrol Listesi

## ✅ Tamamlananlar

1. **Uygulama Adı**: Yıldız Rehberi
2. **Package Name**: com.yildizrehberi.astroloji
3. **Gizlilik Politikası Sayfası**: ✅ Eklendi
4. **Kullanım Koşulları Sayfası**: ✅ Eklendi
5. **Hakkında Sayfası**: ✅ Eklendi
6. **Minimum SDK**: 21 (Android 5.0+)
7. **Target SDK**: 33

## 📋 Yapılması Gerekenler

### 1. Keystore Oluşturma (APK İmzalama)
```bash
keytool -genkey -v -keystore ~/yildiz-rehberi-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias yildiz-rehberi
```

**Önemli**: Şifreyi ve bilgileri kaydedin!

### 2. key.properties Dosyasını Düzenleme
`android/key.properties` dosyasını açın ve şunları ekleyin:
```
storePassword=SIZIN_STORE_SIFRENIZ
keyPassword=SIZIN_KEY_SIFRENIZ
keyAlias=yildiz-rehberi
storeFile=C:/Users/win10/yildiz-rehberi-key.jks
```

### 3. build.gradle Dosyasına Signing Config Ekleme
`android/app/build.gradle` dosyasına signing config eklenecek (ben ekleyeceğim)

### 4. Uygulama İkonu
- Özel bir ikon tasarlayın (1024x1024 PNG)
- https://icon.kitchen/ sitesinden oluşturabilirsiniz
- `android/app/src/main/res/mipmap-*` klasörlerine yerleştirin

### 5. Gizlilik Politikası URL'si
- Gizlilik politikanızı bir web sitesinde yayınlayın
- GitHub Pages kullanabilirsiniz (ücretsiz)
- URL'yi Google Play Console'a ekleyin

### 6. Ekran Görüntüleri
En az 2 ekran görüntüsü gerekli:
- Telefon: 1080x1920 veya 1440x2560
- Tablet (opsiyonel): 1536x2048

### 7. Uygulama Açıklaması
**Kısa Açıklama** (80 karakter):
"Günlük burç yorumları ve astroloji rehberi. 12 burç için pozitif yorumlar."

**Uzun Açıklama** (4000 karakter):
```
Yıldız Rehberi ile günlük burç yorumlarınızı keşfedin!

🌟 ÖZELLİKLER:
• 12 burç için günlük pozitif yorumlar
• Modern ve şık arayüz
• Çevrimdışı çalışma
• Reklamsız deneyim
• Hafif ve hızlı

♈ Koç, ♉ Boğa, ♊ İkizler, ♋ Yengeç, ♌ Aslan, ♍ Başak, 
♎ Terazi, ♏ Akrep, ♐ Yay, ♑ Oğlak, ♒ Kova, ♓ Balık

Bu uygulama sadece eğlence amaçlıdır.
```

### 8. Kategori
- **Kategori**: Yaşam Tarzı (Lifestyle)
- **İçerik Derecelendirmesi**: Herkes (Everyone)

### 9. APK/AAB Oluşturma
```bash
# AAB (App Bundle) - Önerilen
flutter build appbundle --release

# veya APK
flutter build apk --release
```

### 10. Google Play Console
1. https://play.google.com/console adresine gidin
2. Yeni uygulama oluşturun
3. Tüm bilgileri doldurun
4. AAB/APK dosyasını yükleyin
5. İncelemeye gönderin

## 📱 Test Etme
```bash
# Debug modda test
flutter run --release

# APK yükleyip test
flutter install
```

## 🔒 Güvenlik
- ✅ Hiçbir kişisel veri toplanmıyor
- ✅ İnternet izni yok
- ✅ Konum izni yok
- ✅ Kamera/Mikrofon izni yok

## 📊 Veri Güvenliği Formu (Play Console)
- Veri toplama: HAYIR
- Veri paylaşma: HAYIR
- Şifreleme: Gerekli değil
- Veri silme: Gerekli değil

## ⏱️ Tahmini Süre
- İnceleme süresi: 1-7 gün
- İlk yayın: Genellikle 2-3 gün

## 💡 İpuçları
1. Keystore dosyasını GÜVENLİ bir yerde saklayın
2. Şifreleri unutmayın (kaydedin)
3. Ekran görüntülerini gerçek cihazdan alın
4. Gizlilik politikasını mutlaka yayınlayın
5. Uygulama açıklamasında "astroloji", "burç", "yorum" kelimelerini kullanın
