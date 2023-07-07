import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<IncrementCounterEvent>((event, emit) {
      int newValue = event.incrementNum;

      int newValue2 = state.counter;
      newValue2++;
    });
    on<DecrementCounterEvent>((event, emit) {});

    on<ActivateClockEvent>((event, emit) {
      emit(state.copyWith(finishTime: CounterTimerSatuts.initTime));
      Future.delayed(const Duration(seconds: 5), () {
        emit(state.copyWith(finishTime: CounterTimerSatuts.finishTime));
      });
    });
  }
}
