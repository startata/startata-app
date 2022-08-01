import 'package:startata/features/domain/domain.dart';

class DailyEntity {
  final DateTime date;
  final List<String> emailReceiver;
  final List<ReportEntity> reports;

  DailyEntity({
    required this.date,
    required this.emailReceiver,
    required this.reports,
  });

  bool isValid() =>
      reports.isNotEmpty &&
      reports.every(
        (desc) => desc.isValid(),
      );
}
