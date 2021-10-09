import '../domain.dart';

class PersonEntity {
  final String id;
  final String name;
  final String email;
  final String? photoUrl;
  final TeamEntity team;

  PersonEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.photoUrl,
    required this.team,
  });
}
