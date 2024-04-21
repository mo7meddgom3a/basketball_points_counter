import 'package:app4_basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrement());

  int teamA = 0;

  int teamB = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == "A") {
      teamA += buttonNumber;
      emit(CounterAIncrement());
    } else {
      teamB += buttonNumber;
      emit(CounterBIncrement());
    }
  }
}