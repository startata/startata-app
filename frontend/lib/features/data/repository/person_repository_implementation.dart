import 'package:startata/core/errors/exceptions.dart';
import 'package:startata/features/data/datasource/person_datasource.dart';
import 'package:startata/features/domain/entities/person_entity.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:startata/features/domain/entities/team_entity.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';
import 'package:startata/features/domain/repositories/team_repository.dart';

class PersonRepositoryImplementation extends IPersonRepository {
  final IPersonDatasource datasource;
  final ITeamRepository teamRepository;

  PersonRepositoryImplementation(this.datasource, this.teamRepository);

  @override
  Future<PersonEntity> getPersonFromEmail(String email) async {
    try {
      final personModel = await datasource.getPersonFromEmail(email);

      final teamEither = await teamRepository.getTeamFromId(
        personModel.teamId,
      ); //TODO Rever o tratamento dessa Either

      // final team = teamEither.fold(
      //   (failure) => throw (failure),
      //   (team) => team,
      // );

      // return personModel.toEntity(team);
      return personModel.toEntity(teamEither);
    } on DataNotFoundExeption {
      throw UserNotFoundFailure();
    } catch (e) {
      if (e is Failure) {
        throw e;
      }
      throw ServerFailure();
    }
  }

  @override
  Future<PersonEntity> getPersonFromId(String id) async {
    try {
      final result = await datasource.getPersonFromEmail(id);

      final teamEither = await teamRepository.getTeamFromId(
        result.teamId,
      );
      // final team = teamEither.fold(
      //   (failure) => throw (failure),
      //   (team) => team,
      // );
      // return result.toEntity(team);
      return result.toEntity(teamEither);
    } on DataNotFoundExeption {
      throw UserNotFoundFailure();
    } catch (e) {
      throw ServerFailure();
    }
  }

  @override
  Future<List<PersonEntity>> getPersons() async {
    try {
      final result = await datasource.list();

      final personsList = await Future.wait(result.map((personModel) async {
        // final teamEither = await teamRepository.getTeamFromId(
        //   personModel.teamId,
        // );
        // final team = teamEither.fold(
        //   (failure) => throw (failure),
        //   (team) => team,
        // );
        // return personModel.toEntity(team);
        return personModel.toEntity(
          TeamEntity(id: '123', label: 'marketing', index: 2),
        );
      }).toList());

      return personsList;
    } on DataNotFoundExeption {
      throw UserNotFoundFailure();
    } catch (e) {
      throw ServerFailure();
    }
  }
}
