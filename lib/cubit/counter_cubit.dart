import 'package:basket_ball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());
  int CounterA = 0;
  int CounterB = 0;
  incrementA({required int number}) {
    CounterA += number;
    emit(IncrementACounterState());
  }

  incrementB({required int number}) {
    CounterB += number;
    emit(IncrementBCounterState());
  }

  reset() {
    CounterA = 0;
    CounterB = 0;
    emit(ResetCounterState());
  }
}
