class ReportDescriptionEntity {
  final DateTime date;
  final String description;

  ReportDescriptionEntity({
    required this.date,
    required this.description,
  });

  bool isValid() => description.isNotEmpty;
}
