part of 'counter_bloc.dart';

enum CounterTimerSatuts {
  initial,
  initTime,
  finishTime,
}

class CounterState {
  final int counter;
  final CounterTimerSatuts finishTime;

  CounterState({
    required this.counter,
    required this.finishTime,
  });

  factory CounterState.initial() {
    return CounterState(
      counter: 0,
      finishTime: CounterTimerSatuts.initial,
    );
  }

  CounterState copyWith({
    int? counter,
    CounterTimerSatuts? finishTime,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
      finishTime: finishTime ?? this.finishTime,
    );
  }
}
