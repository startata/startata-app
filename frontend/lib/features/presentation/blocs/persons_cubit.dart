import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:startata/core/errors/failures.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/usecases/get_persons_usecase.dart';

import 'persons_state.dart';

class PersonsCubit extends Cubit<PersonsState> {
  // PersonsCubit(PersonsState initialState) : super(initialState);
  // final PersonEntitysAllCubit guestsAllCubit;
  // final PersonEntitysRepository _guests;
  // final UserCubit _user;

  final GetPersonsUsecase _getPersonsUsecase;

  PersonsCubit(
    // this.guestsAllCubit,
    // this._guests,
    // this._user,
    String? personId,
    this._getPersonsUsecase,
  ) : super(PersonsState.loading());

  Future<void> load() async {
    emit(PersonsLoadingState());

    List<PersonEntity> persons;
    try {
      persons = await _getPersonsUsecase();

      // if (persons == [null]) {
      //   throw EmptyPersonsFailure('Nenhum usuário encontrado');
      // }

      emit(PersonsState.loaded(persons: persons));
    } on PlatformException {
      emit(PersonsState.error('Erro desconhecido!'));
    } catch (e) {
      emit(PersonsState.error(e.toString()));
    }
  }

  // PersonEntity? _getPersonEntityFromLoadedList(String personId) {
  //   final filteredPersonEntitys = guestsAllCubit.state.filteredPersonEntitys;
  //   try {
  //     if (guestsAllCubit.state.filteredPersonEntitys.isNotEmpty) {
  //       return filteredPersonEntitys.firstWhere((guest) => guest.id == personId);
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     return null;
  //   }
  // }
}
