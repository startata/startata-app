import 'package:equatable/equatable.dart';

import '../domain.dart';

class PersonEntity extends Equatable {
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

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        photoUrl,
        team,
      ];
}
