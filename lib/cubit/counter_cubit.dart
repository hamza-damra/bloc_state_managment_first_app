import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(CounterAIncrementState) : super(CounterAIncrementState);
  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String teamFlag, required int buttonNumber}) {
    if(teamFlag == 'A'){
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    }else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

}
