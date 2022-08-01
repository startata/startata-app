import 'package:startata/core/errors/failures.dart';

import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';

class GetPersonFromIdUsecase {
  final IPersonRepository _repository;

  GetPersonFromIdUsecase(this._repository);

  Future<PersonEntity> call(String? id) async {
    if (id == null) {
      throw NullParamFailure();
    }
    return await _repository.getPersonFromId(id);
  }
}
