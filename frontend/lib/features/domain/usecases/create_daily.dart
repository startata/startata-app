import 'package:startata/core/errors/failures.dart';
import 'package:startata/features/domain/entities/daily_entity.dart';
import 'package:startata/features/domain/repositories/daily_repository.dart';

class CreateDaily {
  final IDailyRepository _iDailyRepository;

  CreateDaily(this._iDailyRepository);

  Future<bool> call(DailyEntity daily) async {
    if (!daily.isValid()) {
      throw InvalidDailyFailure;
    }
    return await _iDailyRepository.createDaily(daily);
  }
}
