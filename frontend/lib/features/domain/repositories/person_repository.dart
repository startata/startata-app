import 'package:dartz/dartz.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:startata/features/domain/domain.dart';

abstract class IPersonRepository {
  Future<List<PersonEntity>> getPersons();
  Future<PersonEntity> getPersonFromId(String id);
  Future<PersonEntity> getPersonFromEmail(String email);
}
