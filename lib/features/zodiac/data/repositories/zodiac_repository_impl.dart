import '../../domain/entities/zodiac_sign.dart';
import '../../domain/repositories/zodiac_repository.dart';
import '../datasources/zodiac_local_datasource.dart';

class ZodiacRepositoryImpl implements ZodiacRepository {
  final ZodiacLocalDatasource datasource;

  ZodiacRepositoryImpl(this.datasource);

  @override
  List<ZodiacSign> getAllZodiacSigns() {
    return datasource.getAllZodiacSigns();
  }

  @override
  String getDailyPrediction(ZodiacSign sign) {
    final index = DateTime.now().microsecond % sign.dailyPredictions.length;
    return sign.dailyPredictions[index];
  }
}
