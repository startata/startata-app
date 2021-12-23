import 'package:startata/features/domain/domain.dart';

class TeamModel extends TeamEntity {
  TeamModel({
    required String id,
    required String label,
    required int index,
  }) : super(
          id: id,
          label: label,
          index: index,
        );

  factory TeamModel.fromJson(Map<String, dynamic> json) => TeamModel(
        id: json['id'],
        label: json['label'],
        index: json['index'] as int,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'label': label,
        'index': index,
      };

  TeamEntity toEntity() => TeamEntity(
        id: id,
        label: label,
        index: index,
      );
}
