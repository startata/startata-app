import 'package:startata/features/data/model/person_model.dart';

abstract class IPersonDatasource {
  Future<PersonModel> getPersonFromEmail(String email);
  Future<PersonModel> getPersonFromId(String id);
  Future<PersonModel> list();
}
