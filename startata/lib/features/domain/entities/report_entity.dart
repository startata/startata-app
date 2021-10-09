import 'package:startata/features/domain/entities/person_entity.dart';
import 'package:startata/features/domain/entities/report_description_entity.dart';

class ReportEntity {
  final PersonEntity person;
  final List<ReportDescriptionEntity> descriptions;

  ReportEntity({
    required this.person,
    required this.descriptions,
  });
}
