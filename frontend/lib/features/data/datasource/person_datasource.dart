import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart';
import 'package:http/http.dart';
import 'package:startata/core/errors/exceptions.dart';
import 'package:startata/features/data/model/person_model.dart';

abstract class IPersonDatasource {
  Future<PersonModel> getPersonFromEmail(String email);
  Future<PersonModel> getPersonFromId(String id);
  Future<List<PersonModel>> list();
}

class PersonDatasource implements IPersonDatasource {
  final client = Client();

  @override
  Future<PersonModel> getPersonFromEmail(String email) {
    // TODO: implement getPersonFromEmail
    throw UnimplementedError();
  }

  @override
  Future<PersonModel> getPersonFromId(String id) {
    // TODO: implement getPersonFromId
    throw UnimplementedError();
  }

  @override
  Future<List<PersonModel>> list() async {
    // final Uri url = Uri.parse('https://randomuser.me/api/?results=2');

    // final response = await client.get(
    //   url,
    //   headers: {
    //     'Content-Type': 'application/json',
    //   },
    // );

    // print(response.body);

    final responseMock = {
      "result": List.generate(
          10,
          (index) =>
              '{"id": "${index}", "name": "José da Silva","email": "jose@mail.com","photoUrl": "https://picsum.photos/id/23${index}/100", "teamId": "1${index}5"}')
    };

    // final response = Response((responseMock["results"] as String), 200);

    // print(responseMock["result"]);

    return (responseMock["result"] as List)
        .map((e) => PersonModel.fromJson(jsonDecode(e)))
        .toList();

    // if (response.statusCode == 200) {
    //   // return PersonModel.fromJson(jsonDecode(response.body));
    // } else {
    //   throw ServerException();
    // }
  }
}
