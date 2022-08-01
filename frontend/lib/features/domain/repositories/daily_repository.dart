import 'package:startata/features/domain/entities/daily_entity.dart';

abstract class IDailyRepository {
  Future<bool> createDaily(DailyEntity daily);
}
