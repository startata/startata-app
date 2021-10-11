import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:startata/core/usecase/usecase.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/entities/person_entity.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';
import 'package:startata/features/domain/usecases/get_persons_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockPersonRepository extends Mock implements IPersonRepository {}

void main() {
  late GetPersonsUsecase usecase;
  late IPersonRepository repository;

  setUp(() {
    repository = MockPersonRepository();
    usecase = GetPersonsUsecase(repository);
  });

  final tPersons = PersonEntity(
    id: '123AB',
    name: 'José da Silva',
    email: 'jose@mail.com',
    photoUrl: 'https://randomuser.me/api/portraits/lego/2.jpg',
    team: TeamEntity(id: '132', index: 1, label: 'dev'),
  );

  final tNoParams = NoParams();

  test('deve retornar a lista de PersonEntity do repositório', () async {
    when(repository.getPersons)
        .thenAnswer((_) async => Right<Failure, PersonEntity>(tPersons));
    final result = await usecase(tNoParams);
    expect(result, Right(tPersons));
    verify(() => repository.getPersons());
  });

  test('should return a ServerFailure when don\'t succeed', () async {
    // Arrange
    when(repository.getPersons)
        .thenAnswer((_) async => Left<Failure, PersonEntity>(ServerFailure()));
    // Act
    final result = await usecase(tNoParams);
    // Assert
    expect(result, Left(ServerFailure()));
    verify(() => repository.getPersons()).called(1);
  });
}
