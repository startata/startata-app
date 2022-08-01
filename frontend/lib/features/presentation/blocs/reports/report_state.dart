import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:startata/features/domain/domain.dart';

part 'report_state.freezed.dart';

@freezed
class ReportState with _$ReportState {
  factory ReportState.inserted(ReportEntity report) = ReportInsertedAction;

  factory ReportState.updated(ReportEntity report) = ReportUpdatedAction;

  factory ReportState.insertionFailed(
    dynamic error,
  ) = ReportInsertionFailed;

  factory ReportState.updateFailed(
    ReportEntity report,
    dynamic error,
  ) = ReportUpdateFailed;
}
