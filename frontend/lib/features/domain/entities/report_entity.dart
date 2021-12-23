import 'package:equatable/equatable.dart';
import 'package:startata/features/domain/entities/person_entity.dart';
import 'package:startata/features/domain/entities/report_description_entity.dart';

class ReportEntity extends Equatable {
  final PersonEntity person;
  final List<ReportDescriptionEntity> descriptions;

  ReportEntity({
    required this.person,
    required this.descriptions,
  });

  @override
  List<Object?> get props => [person, descriptions];
}
