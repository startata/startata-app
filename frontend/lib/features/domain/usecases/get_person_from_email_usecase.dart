import 'package:startata/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:startata/core/usecase/usecase.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';

class GetPersonFromEmailUseCase implements Usecase<PersonEntity, String> {
  final IPersonRepository repository;

  GetPersonFromEmailUseCase(this.repository);

  @override
  Future<Either<Failure, PersonEntity>> call(String email) {
    return repository.getPersonFromEmail(email);
  }
}
