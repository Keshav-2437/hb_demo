import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}

// State
class CounterState {
  final int counter;
  CounterState(this.counter);
}

// BLoC
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementCounter>(
        (event, emit) => emit(CounterState(state.counter + 1)));
    on<DecrementCounter>(
        (event, emit) => emit(CounterState(state.counter - 1)));
  }
}
