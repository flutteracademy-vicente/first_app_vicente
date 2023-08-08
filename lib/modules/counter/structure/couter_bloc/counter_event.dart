part of 'counter_bloc.dart';

abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {
  // final int incrementNum;

  IncrementCounterEvent(
      // required this.incrementNum,
      );
}

class DecrementCounterEvent extends CounterEvent {
  final int decrementNum;

  DecrementCounterEvent({required this.decrementNum});
}

class ActivateClockEvent extends CounterEvent {
  ActivateClockEvent();
}
