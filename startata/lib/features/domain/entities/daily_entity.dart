import 'package:startata/features/domain/domain.dart';

class DailyEntity {
  final DateTime date;
  final List<String> emailReciver;
  final List<ReportEntity> reports;

  DailyEntity({
    required this.date,
    required this.emailReciver,
    required this.reports,
  });
}
