import 'package:startata/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:startata/core/usecase/usecase.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';

class GetPersonsUsecase implements Usecase<List<PersonEntity>, NoParams> {
  final IPersonRepository repository;

  GetPersonsUsecase(this.repository);

  @override
  Future<Either<Failure, List<PersonEntity>>> call(NoParams params) async {
    return await repository.getPersons();
  }
}
