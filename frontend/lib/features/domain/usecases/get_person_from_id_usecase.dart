import 'package:startata/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:startata/core/usecase/usecase.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';

class GetPersonFromIdUsecase implements Usecase<PersonEntity, String> {
  final IPersonRepository repository;

  GetPersonFromIdUsecase(this.repository);

  @override
  Future<Either<Failure, PersonEntity>> call(String? id) async {
    return id != null
        ? await repository.getPersonFromId(id)
        : Left(NullParamFailure());
  }
}
