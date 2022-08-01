// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReportEntity report) inserted,
    required TResult Function(ReportEntity report) updated,
    required TResult Function(dynamic error) insertionFailed,
    required TResult Function(ReportEntity report, dynamic error) updateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportInsertedAction value) inserted,
    required TResult Function(ReportUpdatedAction value) updated,
    required TResult Function(ReportInsertionFailed value) insertionFailed,
    required TResult Function(ReportUpdateFailed value) updateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  final ReportState _value;
  // ignore: unused_field
  final $Res Function(ReportState) _then;
}

/// @nodoc
abstract class _$$ReportInsertedActionCopyWith<$Res> {
  factory _$$ReportInsertedActionCopyWith(_$ReportInsertedAction value,
          $Res Function(_$ReportInsertedAction) then) =
      __$$ReportInsertedActionCopyWithImpl<$Res>;
  $Res call({ReportEntity report});
}

/// @nodoc
class __$$ReportInsertedActionCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res>
    implements _$$ReportInsertedActionCopyWith<$Res> {
  __$$ReportInsertedActionCopyWithImpl(_$ReportInsertedAction _value,
      $Res Function(_$ReportInsertedAction) _then)
      : super(_value, (v) => _then(v as _$ReportInsertedAction));

  @override
  _$ReportInsertedAction get _value => super._value as _$ReportInsertedAction;

  @override
  $Res call({
    Object? report = freezed,
  }) {
    return _then(_$ReportInsertedAction(
      report == freezed
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportEntity,
    ));
  }
}

/// @nodoc

class _$ReportInsertedAction implements ReportInsertedAction {
  _$ReportInsertedAction(this.report);

  @override
  final ReportEntity report;

  @override
  String toString() {
    return 'ReportState.inserted(report: $report)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportInsertedAction &&
            const DeepCollectionEquality().equals(other.report, report));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(report));

  @JsonKey(ignore: true)
  @override
  _$$ReportInsertedActionCopyWith<_$ReportInsertedAction> get copyWith =>
      __$$ReportInsertedActionCopyWithImpl<_$ReportInsertedAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReportEntity report) inserted,
    required TResult Function(ReportEntity report) updated,
    required TResult Function(dynamic error) insertionFailed,
    required TResult Function(ReportEntity report, dynamic error) updateFailed,
  }) {
    return inserted(report);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
  }) {
    return inserted?.call(report);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
    required TResult orElse(),
  }) {
    if (inserted != null) {
      return inserted(report);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportInsertedAction value) inserted,
    required TResult Function(ReportUpdatedAction value) updated,
    required TResult Function(ReportInsertionFailed value) insertionFailed,
    required TResult Function(ReportUpdateFailed value) updateFailed,
  }) {
    return inserted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
  }) {
    return inserted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (inserted != null) {
      return inserted(this);
    }
    return orElse();
  }
}

abstract class ReportInsertedAction implements ReportState {
  factory ReportInsertedAction(final ReportEntity report) =
      _$ReportInsertedAction;

  ReportEntity get report;
  @JsonKey(ignore: true)
  _$$ReportInsertedActionCopyWith<_$ReportInsertedAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportUpdatedActionCopyWith<$Res> {
  factory _$$ReportUpdatedActionCopyWith(_$ReportUpdatedAction value,
          $Res Function(_$ReportUpdatedAction) then) =
      __$$ReportUpdatedActionCopyWithImpl<$Res>;
  $Res call({ReportEntity report});
}

/// @nodoc
class __$$ReportUpdatedActionCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res>
    implements _$$ReportUpdatedActionCopyWith<$Res> {
  __$$ReportUpdatedActionCopyWithImpl(
      _$ReportUpdatedAction _value, $Res Function(_$ReportUpdatedAction) _then)
      : super(_value, (v) => _then(v as _$ReportUpdatedAction));

  @override
  _$ReportUpdatedAction get _value => super._value as _$ReportUpdatedAction;

  @override
  $Res call({
    Object? report = freezed,
  }) {
    return _then(_$ReportUpdatedAction(
      report == freezed
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportEntity,
    ));
  }
}

/// @nodoc

class _$ReportUpdatedAction implements ReportUpdatedAction {
  _$ReportUpdatedAction(this.report);

  @override
  final ReportEntity report;

  @override
  String toString() {
    return 'ReportState.updated(report: $report)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportUpdatedAction &&
            const DeepCollectionEquality().equals(other.report, report));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(report));

  @JsonKey(ignore: true)
  @override
  _$$ReportUpdatedActionCopyWith<_$ReportUpdatedAction> get copyWith =>
      __$$ReportUpdatedActionCopyWithImpl<_$ReportUpdatedAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReportEntity report) inserted,
    required TResult Function(ReportEntity report) updated,
    required TResult Function(dynamic error) insertionFailed,
    required TResult Function(ReportEntity report, dynamic error) updateFailed,
  }) {
    return updated(report);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
  }) {
    return updated?.call(report);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(report);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportInsertedAction value) inserted,
    required TResult Function(ReportUpdatedAction value) updated,
    required TResult Function(ReportInsertionFailed value) insertionFailed,
    required TResult Function(ReportUpdateFailed value) updateFailed,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class ReportUpdatedAction implements ReportState {
  factory ReportUpdatedAction(final ReportEntity report) =
      _$ReportUpdatedAction;

  ReportEntity get report;
  @JsonKey(ignore: true)
  _$$ReportUpdatedActionCopyWith<_$ReportUpdatedAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportInsertionFailedCopyWith<$Res> {
  factory _$$ReportInsertionFailedCopyWith(_$ReportInsertionFailed value,
          $Res Function(_$ReportInsertionFailed) then) =
      __$$ReportInsertionFailedCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$ReportInsertionFailedCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res>
    implements _$$ReportInsertionFailedCopyWith<$Res> {
  __$$ReportInsertionFailedCopyWithImpl(_$ReportInsertionFailed _value,
      $Res Function(_$ReportInsertionFailed) _then)
      : super(_value, (v) => _then(v as _$ReportInsertionFailed));

  @override
  _$ReportInsertionFailed get _value => super._value as _$ReportInsertionFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ReportInsertionFailed(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ReportInsertionFailed implements ReportInsertionFailed {
  _$ReportInsertionFailed(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ReportState.insertionFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportInsertionFailed &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ReportInsertionFailedCopyWith<_$ReportInsertionFailed> get copyWith =>
      __$$ReportInsertionFailedCopyWithImpl<_$ReportInsertionFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReportEntity report) inserted,
    required TResult Function(ReportEntity report) updated,
    required TResult Function(dynamic error) insertionFailed,
    required TResult Function(ReportEntity report, dynamic error) updateFailed,
  }) {
    return insertionFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
  }) {
    return insertionFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
    required TResult orElse(),
  }) {
    if (insertionFailed != null) {
      return insertionFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportInsertedAction value) inserted,
    required TResult Function(ReportUpdatedAction value) updated,
    required TResult Function(ReportInsertionFailed value) insertionFailed,
    required TResult Function(ReportUpdateFailed value) updateFailed,
  }) {
    return insertionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
  }) {
    return insertionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (insertionFailed != null) {
      return insertionFailed(this);
    }
    return orElse();
  }
}

abstract class ReportInsertionFailed implements ReportState {
  factory ReportInsertionFailed(final dynamic error) = _$ReportInsertionFailed;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ReportInsertionFailedCopyWith<_$ReportInsertionFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportUpdateFailedCopyWith<$Res> {
  factory _$$ReportUpdateFailedCopyWith(_$ReportUpdateFailed value,
          $Res Function(_$ReportUpdateFailed) then) =
      __$$ReportUpdateFailedCopyWithImpl<$Res>;
  $Res call({ReportEntity report, dynamic error});
}

/// @nodoc
class __$$ReportUpdateFailedCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res>
    implements _$$ReportUpdateFailedCopyWith<$Res> {
  __$$ReportUpdateFailedCopyWithImpl(
      _$ReportUpdateFailed _value, $Res Function(_$ReportUpdateFailed) _then)
      : super(_value, (v) => _then(v as _$ReportUpdateFailed));

  @override
  _$ReportUpdateFailed get _value => super._value as _$ReportUpdateFailed;

  @override
  $Res call({
    Object? report = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ReportUpdateFailed(
      report == freezed
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportEntity,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ReportUpdateFailed implements ReportUpdateFailed {
  _$ReportUpdateFailed(this.report, this.error);

  @override
  final ReportEntity report;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'ReportState.updateFailed(report: $report, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportUpdateFailed &&
            const DeepCollectionEquality().equals(other.report, report) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(report),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ReportUpdateFailedCopyWith<_$ReportUpdateFailed> get copyWith =>
      __$$ReportUpdateFailedCopyWithImpl<_$ReportUpdateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReportEntity report) inserted,
    required TResult Function(ReportEntity report) updated,
    required TResult Function(dynamic error) insertionFailed,
    required TResult Function(ReportEntity report, dynamic error) updateFailed,
  }) {
    return updateFailed(report, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
  }) {
    return updateFailed?.call(report, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReportEntity report)? inserted,
    TResult Function(ReportEntity report)? updated,
    TResult Function(dynamic error)? insertionFailed,
    TResult Function(ReportEntity report, dynamic error)? updateFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(report, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportInsertedAction value) inserted,
    required TResult Function(ReportUpdatedAction value) updated,
    required TResult Function(ReportInsertionFailed value) insertionFailed,
    required TResult Function(ReportUpdateFailed value) updateFailed,
  }) {
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
  }) {
    return updateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInsertedAction value)? inserted,
    TResult Function(ReportUpdatedAction value)? updated,
    TResult Function(ReportInsertionFailed value)? insertionFailed,
    TResult Function(ReportUpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class ReportUpdateFailed implements ReportState {
  factory ReportUpdateFailed(final ReportEntity report, final dynamic error) =
      _$ReportUpdateFailed;

  ReportEntity get report;
  dynamic get error;
  @JsonKey(ignore: true)
  _$$ReportUpdateFailedCopyWith<_$ReportUpdateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
