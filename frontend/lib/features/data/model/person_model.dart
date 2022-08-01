import 'package:startata/features/domain/domain.dart';

class PersonModel {
  final String id;
  final String name;
  final String email;
  final String? photoUrl;
  final String teamId;

  PersonModel({
    required this.id,
    required this.name,
    required this.email,
    required this.photoUrl,
    required this.teamId,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        photoUrl: json['photoUrl'],
        teamId: json['teamId'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'photoUrl': photoUrl,
        'team': teamId,
      };

  PersonEntity toEntity(TeamEntity team) => PersonEntity(
        id: id,
        email: email,
        name: name,
        photoUrl: photoUrl,
        team: team,
      );
}
