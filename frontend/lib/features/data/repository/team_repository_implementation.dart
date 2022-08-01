import 'package:startata/core/errors/exceptions.dart';
import 'package:startata/features/data/datasource/team_datasource.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:startata/features/domain/repositories/team_repository.dart';

class TeamRepositoryImplementation implements ITeamRepository {
  final ITeamDatasource datasource;

  TeamRepositoryImplementation(this.datasource);

  @override
  Future<TeamEntity> getTeamFromId(String id) async {
    try {
      final result = await datasource.getTeamById(id);
      return result.toEntity();
    } on DataNotFoundExeption {
      throw TeamNotFoundFailure();
    } catch (e) {
      throw ServerFailure();
    }
  }
}
