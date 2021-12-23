import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/entities/person_entity.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';
import 'package:startata/features/domain/usecases/get_person_from_id_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockPersonRepository extends Mock implements IPersonRepository {}

void main() {
  late GetPersonFromIdUsecase usecase;
  late IPersonRepository repository;

  setUp(() {
    repository = MockPersonRepository();
    usecase = GetPersonFromIdUsecase(repository);
  });

  final tPerson = PersonEntity(
    id: '123AB',
    name: 'José da Silva',
    email: 'jose@mail.com',
    photoUrl: 'https://randomuser.me/api/portraits/lego/2.jpg',
    team: TeamEntity(id: '132', index: 1, label: 'dev'),
  );

  final String tId = '123AB';

  test('should return a PersonEntity for a giver Id from repository', () async {
    when(() => repository.getPersonFromId(tId))
        .thenAnswer((_) async => Right<Failure, PersonEntity>(tPerson));
    final result = await usecase(tId);
    expect(result, Right(tPerson));
    verify(() => repository.getPersonFromId(tId));
  });

  test('should return a ServerFailure when don\'t succeed', () async {
    when(() => repository.getPersonFromId(tId))
        .thenAnswer((_) async => Left<Failure, PersonEntity>(ServerFailure()));
    final result = await usecase(tId);
    expect(result, Left(ServerFailure()));
    verify(() => repository.getPersonFromId(tId)).called(1);
  });
}
