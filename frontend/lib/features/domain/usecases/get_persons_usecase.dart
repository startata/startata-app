import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';

class GetPersonsUsecase {
  final IPersonRepository _repository;

  GetPersonsUsecase(this._repository);

  Future<List<PersonEntity>> call() async {
    return await _repository.getPersons();
  }
}
