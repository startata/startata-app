import 'package:startata/core/usecase/usecase.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';

class GetPersonFromEmailUseCase {
  final IPersonRepository _repository;

  GetPersonFromEmailUseCase(this._repository);

  Future<PersonEntity> call(String email) {
    // if (email.isValid()) {
    //   throw InvalidParamFailure();
    // }

    return _repository.getPersonFromEmail(email);
  }
}
