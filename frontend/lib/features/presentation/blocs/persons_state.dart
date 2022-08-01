import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'persons_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PersonsState with _$PersonsState {
  factory PersonsState.loaded({
    required List<PersonEntity> persons,
  }) = PersonsLoadedState;

  factory PersonsState.loading() = PersonsLoadingState;

  factory PersonsState.empty() = PersonsEmptyState;

  factory PersonsState.error(String error) = PersonsFailedState;
}

// import 'package:equatable/equatable.dart';
// import 'package:meta/meta.dart';
// import 'package:startata/features/domain/entities/person_entity.dart';

// @immutable
// abstract class MainState extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// class Empty extends MainState {}

// class Loading extends MainState {}

// class Loaded extends MainState {
//   final List<PersonEntity> persons;

//   Loaded({required this.persons});

//   @override
//   List<Object> get props => [persons];
// }

// class Error extends MainState {
//   final String message;

//   Error({required this.message});

//   @override
//   List<Object> get props => [message];
// }
