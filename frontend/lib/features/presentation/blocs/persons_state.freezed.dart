// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'persons_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PersonEntity> persons) loaded,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonsLoadedState value) loaded,
    required TResult Function(PersonsLoadingState value) loading,
    required TResult Function(PersonsEmptyState value) empty,
    required TResult Function(PersonsFailedState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsStateCopyWith<$Res> {
  factory $PersonsStateCopyWith(
          PersonsState value, $Res Function(PersonsState) then) =
      _$PersonsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonsStateCopyWithImpl<$Res> implements $PersonsStateCopyWith<$Res> {
  _$PersonsStateCopyWithImpl(this._value, this._then);

  final PersonsState _value;
  // ignore: unused_field
  final $Res Function(PersonsState) _then;
}

/// @nodoc
abstract class _$$PersonsLoadedStateCopyWith<$Res> {
  factory _$$PersonsLoadedStateCopyWith(_$PersonsLoadedState value,
          $Res Function(_$PersonsLoadedState) then) =
      __$$PersonsLoadedStateCopyWithImpl<$Res>;
  $Res call({List<PersonEntity> persons});
}

/// @nodoc
class __$$PersonsLoadedStateCopyWithImpl<$Res>
    extends _$PersonsStateCopyWithImpl<$Res>
    implements _$$PersonsLoadedStateCopyWith<$Res> {
  __$$PersonsLoadedStateCopyWithImpl(
      _$PersonsLoadedState _value, $Res Function(_$PersonsLoadedState) _then)
      : super(_value, (v) => _then(v as _$PersonsLoadedState));

  @override
  _$PersonsLoadedState get _value => super._value as _$PersonsLoadedState;

  @override
  $Res call({
    Object? persons = freezed,
  }) {
    return _then(_$PersonsLoadedState(
      persons: persons == freezed
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<PersonEntity>,
    ));
  }
}

/// @nodoc

class _$PersonsLoadedState implements PersonsLoadedState {
  _$PersonsLoadedState({required this.persons});

  @override
  final List<PersonEntity> persons;

  @override
  String toString() {
    return 'PersonsState.loaded(persons: $persons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonsLoadedState &&
            const DeepCollectionEquality().equals(other.persons, persons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(persons));

  @JsonKey(ignore: true)
  @override
  _$$PersonsLoadedStateCopyWith<_$PersonsLoadedState> get copyWith =>
      __$$PersonsLoadedStateCopyWithImpl<_$PersonsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PersonEntity> persons) loaded,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    return loaded(persons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
  }) {
    return loaded?.call(persons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(persons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonsLoadedState value) loaded,
    required TResult Function(PersonsLoadingState value) loading,
    required TResult Function(PersonsEmptyState value) empty,
    required TResult Function(PersonsFailedState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PersonsLoadedState implements PersonsState {
  factory PersonsLoadedState({required final List<PersonEntity> persons}) =
      _$PersonsLoadedState;

  List<PersonEntity> get persons;
  @JsonKey(ignore: true)
  _$$PersonsLoadedStateCopyWith<_$PersonsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonsLoadingStateCopyWith<$Res> {
  factory _$$PersonsLoadingStateCopyWith(_$PersonsLoadingState value,
          $Res Function(_$PersonsLoadingState) then) =
      __$$PersonsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonsLoadingStateCopyWithImpl<$Res>
    extends _$PersonsStateCopyWithImpl<$Res>
    implements _$$PersonsLoadingStateCopyWith<$Res> {
  __$$PersonsLoadingStateCopyWithImpl(
      _$PersonsLoadingState _value, $Res Function(_$PersonsLoadingState) _then)
      : super(_value, (v) => _then(v as _$PersonsLoadingState));

  @override
  _$PersonsLoadingState get _value => super._value as _$PersonsLoadingState;
}

/// @nodoc

class _$PersonsLoadingState implements PersonsLoadingState {
  _$PersonsLoadingState();

  @override
  String toString() {
    return 'PersonsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PersonsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PersonEntity> persons) loaded,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonsLoadedState value) loaded,
    required TResult Function(PersonsLoadingState value) loading,
    required TResult Function(PersonsEmptyState value) empty,
    required TResult Function(PersonsFailedState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PersonsLoadingState implements PersonsState {
  factory PersonsLoadingState() = _$PersonsLoadingState;
}

/// @nodoc
abstract class _$$PersonsEmptyStateCopyWith<$Res> {
  factory _$$PersonsEmptyStateCopyWith(
          _$PersonsEmptyState value, $Res Function(_$PersonsEmptyState) then) =
      __$$PersonsEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonsEmptyStateCopyWithImpl<$Res>
    extends _$PersonsStateCopyWithImpl<$Res>
    implements _$$PersonsEmptyStateCopyWith<$Res> {
  __$$PersonsEmptyStateCopyWithImpl(
      _$PersonsEmptyState _value, $Res Function(_$PersonsEmptyState) _then)
      : super(_value, (v) => _then(v as _$PersonsEmptyState));

  @override
  _$PersonsEmptyState get _value => super._value as _$PersonsEmptyState;
}

/// @nodoc

class _$PersonsEmptyState implements PersonsEmptyState {
  _$PersonsEmptyState();

  @override
  String toString() {
    return 'PersonsState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PersonsEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PersonEntity> persons) loaded,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonsLoadedState value) loaded,
    required TResult Function(PersonsLoadingState value) loading,
    required TResult Function(PersonsEmptyState value) empty,
    required TResult Function(PersonsFailedState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PersonsEmptyState implements PersonsState {
  factory PersonsEmptyState() = _$PersonsEmptyState;
}

/// @nodoc
abstract class _$$PersonsFailedStateCopyWith<$Res> {
  factory _$$PersonsFailedStateCopyWith(_$PersonsFailedState value,
          $Res Function(_$PersonsFailedState) then) =
      __$$PersonsFailedStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$PersonsFailedStateCopyWithImpl<$Res>
    extends _$PersonsStateCopyWithImpl<$Res>
    implements _$$PersonsFailedStateCopyWith<$Res> {
  __$$PersonsFailedStateCopyWithImpl(
      _$PersonsFailedState _value, $Res Function(_$PersonsFailedState) _then)
      : super(_value, (v) => _then(v as _$PersonsFailedState));

  @override
  _$PersonsFailedState get _value => super._value as _$PersonsFailedState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$PersonsFailedState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PersonsFailedState implements PersonsFailedState {
  _$PersonsFailedState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PersonsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonsFailedState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$PersonsFailedStateCopyWith<_$PersonsFailedState> get copyWith =>
      __$$PersonsFailedStateCopyWithImpl<_$PersonsFailedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PersonEntity> persons) loaded,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PersonEntity> persons)? loaded,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonsLoadedState value) loaded,
    required TResult Function(PersonsLoadingState value) loading,
    required TResult Function(PersonsEmptyState value) empty,
    required TResult Function(PersonsFailedState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonsLoadedState value)? loaded,
    TResult Function(PersonsLoadingState value)? loading,
    TResult Function(PersonsEmptyState value)? empty,
    TResult Function(PersonsFailedState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PersonsFailedState implements PersonsState {
  factory PersonsFailedState(final String error) = _$PersonsFailedState;

  String get error;
  @JsonKey(ignore: true)
  _$$PersonsFailedStateCopyWith<_$PersonsFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}
