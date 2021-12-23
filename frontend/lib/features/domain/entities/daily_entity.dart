import 'package:equatable/equatable.dart';
import 'package:startata/features/domain/domain.dart';

class DailyEntity extends Equatable {
  final DateTime date;
  final List<String> emailReciver;
  final List<ReportEntity> reports;

  DailyEntity({
    required this.date,
    required this.emailReciver,
    required this.reports,
  });

  @override
  List<Object?> get props => [
        date,
        emailReciver,
        reports,
      ];
}
