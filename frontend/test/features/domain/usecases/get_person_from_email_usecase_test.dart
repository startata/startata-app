// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:startata/core/errors/failures.dart';
// import 'package:startata/features/domain/domain.dart';
// import 'package:startata/features/domain/repositories/person_repository.dart';
// import 'package:startata/features/domain/usecases/get_person_from_email_usecase.dart';

// class MockPersonRepository extends Mock implements IPersonRepository {}

// void main() {
//   late IPersonRepository repository;
//   late GetPersonFromEmailUseCase useCase;

//   setUp(() {
//     repository = MockPersonRepository();
//     useCase = GetPersonFromEmailUseCase(repository);
//   });

//   final tPerson = PersonEntity(
//     id: '123AB',
//     name: 'José da Silva',
//     email: 'teste@mail.com',
//     photoUrl: 'https://randomuser.me/api/portraits/lego/2.jpg',
//     team: TeamEntity(id: '132', index: 1, label: 'dev'),
//   );

//   final String tEmail = 'teste@mail.com';

//   test('Should return a PersonEntity for a given email', () async {
//     when(() => repository.getPersonFromEmail(tEmail))
//         .thenAnswer((_) async => Right<Failure, PersonEntity>(tPerson));
//     final result = await useCase(tEmail);
//     expect(result, Right(tPerson));
//     verify(() => repository.getPersonFromEmail(tEmail)).called(1);
//   });

//   test('Should return a Server Failure when don\'t succeed', () async {
//     when(() => repository.getPersonFromEmail(tEmail))
//         .thenAnswer((_) async => Left<Failure, PersonEntity>(ServerFailure()));
//     final result = await useCase(tEmail);
//     expect(result, Left(ServerFailure()));
//     verify(() => repository.getPersonFromEmail(tEmail)).called(1);
//   });
// }
