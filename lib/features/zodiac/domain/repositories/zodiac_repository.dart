import '../entities/zodiac_sign.dart';

abstract class ZodiacRepository {
  List<ZodiacSign> getAllZodiacSigns();
  String getDailyPrediction(ZodiacSign sign);
}
