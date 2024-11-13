// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamApoints = 0;
  int teamBpoints = 0;

  void IncreamentTeam({required String team, required int NumberOfButton}) {
    if (team == 'A') {
      teamApoints += NumberOfButton;
      emit(CounterTeamAState());
    } else {
      teamBpoints += NumberOfButton;
      emit(CounterTeamBState());
    }
  }
}
