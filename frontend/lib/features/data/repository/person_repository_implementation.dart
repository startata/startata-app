import 'package:startata/core/errors/exceptions.dart';
import 'package:startata/features/data/datasource/person_datasource.dart';
import 'package:startata/features/domain/entities/person_entity.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';
import 'package:startata/features/domain/repositories/team_repository.dart';

class PersonRepositoryImplementation extends IPersonRepository {
  final IPersonDatasource datasource;
  final ITeamRepository teamRepository;

  PersonRepositoryImplementation(this.datasource, this.teamRepository);

  @override
  Future<Either<Failure, PersonEntity>> getPersonFromEmail(String email) async {
    try {
      final personModel = await datasource.getPersonFromEmail(email);

      final teamEither = await teamRepository.getTeamFromId(
        personModel.teamId,
      ); //TODO Rever o tratamento dessa Either

      final team = teamEither.fold(
        (failure) => throw (failure),
        (team) => team,
      );

      return Right(personModel.toEntity(team));
    } on DataNotFoundExeption {
      return Left(UserNotFoundFailure());
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, PersonEntity>> getPersonFromId(String id) async {
    try {
      final result = await datasource.getPersonFromEmail(id);

      final teamEither = await teamRepository.getTeamFromId(
        result.teamId,
      );
      final team = teamEither.fold(
        (failure) => throw (failure),
        (team) => team,
      );
      return Right(result.toEntity(team));
    } on DataNotFoundExeption {
      return Left(UserNotFoundFailure());
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<PersonEntity>>> getPersons() {
    // TODO: implement getPersons
    throw UnimplementedError();
  }
}
