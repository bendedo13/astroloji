import '../../domain/entities/zodiac_sign.dart';

class ZodiacLocalDatasource {
  static List<ZodiacSign> getAllZodiacSigns() {
    return [
      const ZodiacSign(
        name: 'Koç',
        symbol: '♈',
        dateRange: '21 Mart - 20 Nisan',
        dailyPredictions: [
          'Bugün enerjiniz yüksek, yeni başlangıçlar için harika bir gün!',
          'Cesaretinizle çevrenize ilham vereceksiniz.',
          'Kariyerinizde beklenmedik bir fırsat sizi bekliyor.',
          'Aşk hayatınızda heyecan verici gelişmeler olabilir.',
        ],
      ),
      const ZodiacSign(
        name: 'Boğa',
        symbol: '♉',
        dateRange: '21 Nisan - 21 Mayıs',
        dailyPredictions: [
          'Maddi konularda şanslı bir gün geçirebilirsiniz.',
          'Sabrınız bugün meyvelerini verecek.',
          'Sevdiklerinizle keyifli anlar sizi bekliyor.',
          'Doğayla iç içe vakit geçirmek size iyi gelecek.',
        ],
      ),
      const ZodiacSign(
        name: 'İkizler',
        symbol: '♊',
        dateRange: '22 Mayıs - 21 Haziran',
        dailyPredictions: [
          'İletişim becerilerinizle herkesi etkileyeceksiniz.',
          'Yeni insanlarla tanışmak için harika bir gün.',
          'Zihniniz çok açık, yaratıcı fikirler üreteceksiniz.',
          'Seyahat planları için uygun bir zaman.',
        ],
      ),
      const ZodiacSign(
        name: 'Yengeç',
        symbol: '♋',
        dateRange: '22 Haziran - 22 Temmuz',
        dailyPredictions: [
          'Duygusal olarak dengeli ve huzurlu hissediyorsunuz.',
          'Ailenizden güzel haberler alabilirsiniz.',
          'Evde keyifli sürprizler sizi bekliyor.',
          'Geçmişten gelen bir dost size mutluluk verecek.',
        ],
      ),
      const ZodiacSign(
        name: 'Aslan',
        symbol: '♌',
        dateRange: '23 Temmuz - 22 Ağustos',
        dailyPredictions: [
          'Yaratıcılığınız zirvede, yeteneklerinizi sergileyin.',
          'Kalbinizin sesini dinleyin, doğru kararlar alacaksınız.',
          'Sosyal çevrenizde ilgi odağı olacaksınız.',
          'Kendinize olan güveniniz her zamankinden yüksek.',
        ],
      ),
      const ZodiacSign(
        name: 'Başak',
        symbol: '♍',
        dateRange: '23 Ağustos - 22 Eylül',
        dailyPredictions: [
          'Detaylara olan hakimiyetiniz işlerinizi kolaylaştıracak.',
          'Sağlığınıza dikkat etmek için güzel bir gün.',
          'İş yerinde takdir edileceksiniz.',
          'Planlarınız yolunda gidiyor, emin adımlarla ilerleyin.',
        ],
      ),
      const ZodiacSign(
        name: 'Terazi',
        symbol: '♎',
        dateRange: '23 Eylül - 22 Ekim',
        dailyPredictions: [
          'İkili ilişkilerde uyumlu ve dengeli bir gün.',
          'Sanatsal faaliyetler size iyi gelecek.',
          'Yeni bir hobi edinmek için harika bir zaman.',
          'Adalet duygunuz sayesinde çevrenize yardımcı olacaksınız.',
        ],
      ),
      const ZodiacSign(
        name: 'Akrep',
        symbol: '♏',
        dateRange: '23 Ekim - 21 Kasım',
        dailyPredictions: [
          'Sezgileriniz çok güçlü, içinize doğanlar gerçekleşecek.',
          'Derin duygusal bağlar kurmak için uygun bir dönem.',
          'Gizli kalmış bir yeteneğinizi keşfedebilirsiniz.',
          'Maddi konularda bereketli bir gün.',
        ],
      ),
      const ZodiacSign(
        name: 'Yay',
        symbol: '♐',
        dateRange: '22 Kasım - 21 Aralık',
        dailyPredictions: [
          'Macera dolu bir gün sizi bekliyor, yeni yerler keşfedin.',
          'İyimserliğiniz herkese enerji verecek.',
          'Eğitim ve seyahat konularında şanslısınız.',
          'Ufkunuzu genişletecek gelişmeler olacak.',
        ],
      ),
      const ZodiacSign(
        name: 'Oğlak',
        symbol: '♑',
        dateRange: '22 Aralık - 20 Ocak',
        dailyPredictions: [
          'Kariyer basamaklarını hızla tırmanıyorsunuz.',
          'Disiplininiz sayesinde hedeflerinize yaklaşıyorsunuz.',
          'Uzun vadeli planlar için mükemmel bir zaman.',
          'Ailenizden destek göreceksiniz.',
        ],
      ),
      const ZodiacSign(
        name: 'Kova',
        symbol: '♒',
        dateRange: '21 Ocak - 19 Şubat',
        dailyPredictions: [
          'Yenilikçi fikirlerinizle fark yaratacaksınız.',
          'Arkadaşlarınızla keyifli projelerde yer alabilirsiniz.',
          'Teknoloji ve bilimle ilgilenmek size iyi gelecek.',
          'Özgür ruhunuzu ifade etmek için harika bir gün.',
        ],
      ),
      const ZodiacSign(
        name: 'Balık',
        symbol: '♓',
        dateRange: '20 Şubat - 20 Mart',
        dailyPredictions: [
          'Hayal gücünüz sınırsız, sanatsal yönünüzü keşfedin.',
          'Empati yeteneğiniz sayesinde çevrenize destek olacaksınız.',
          'Ruhsal gelişim için uygun bir dönem.',
          'Sezgileriniz sizi doğru yola yönlendirecek.',
        ],
      ),
    ];
  }
}
