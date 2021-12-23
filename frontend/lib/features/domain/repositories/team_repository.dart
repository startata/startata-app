import 'package:dartz/dartz.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:startata/features/domain/domain.dart';

abstract class ITeamRepository {
  Future<Either<Failure, TeamEntity>> getTeamFromId(String id);
}
