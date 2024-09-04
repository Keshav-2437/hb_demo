import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementCounter>((event, emit) async {
      try {
        emit(CounterState(state.counter + 1));
      } catch (error) {
        emit(CounterState(state.counter));
      }
    });

    on<DecrementCounter>((event, emit) async {
      try {
        emit(CounterState(state.counter - 1));
      } catch (error) {
        emit(CounterState(state.counter));
      }
    });
  }
}
