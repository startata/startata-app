import 'package:equatable/equatable.dart';

class TeamEntity extends Equatable {
  final String id;
  final String label;
  final int index;

  const TeamEntity({
    required this.id,
    required this.label,
    required this.index,
  });

  @override
  List<Object?> get props => [
        id,
        label,
        index,
      ];
}
