import 'package:dartz/dartz.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:startata/features/domain/domain.dart';

abstract class IPersonRepository {
  Future<Either<Failure, PersonEntity>> getPersons();
}
