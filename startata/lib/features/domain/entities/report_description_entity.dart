import 'package:equatable/equatable.dart';

class ReportDescriptionEntity extends Equatable {
  final DateTime date;
  final String description;

  ReportDescriptionEntity({
    required this.date,
    required this.description,
  });

  @override
  List<Object?> get props => [date, description];
}
