import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_event.dart';
part 'select_state.dart';
part 'select_bloc.freezed.dart';

class SelectBloc<T> extends Bloc<SelectEvent<T>, SelectState<T>> {
  SelectBloc() : super(SelectState<T>()) {
    on<_Select<T>>(_onSelect);
    on<_Reset<T>>(_onReset);
  }

  void _onSelect(_Select<T> event, Emitter<SelectState<T>> emit) {
    return emit(state.copyWith(value: event.value));
  }

  void _onReset(_Reset<T> event, Emitter<SelectState<T>> emit) {
    return emit(state.copyWith(value: null));
  }
}

class IntSelectBloc extends SelectBloc<int> {}

class DoubleSelectBloc extends SelectBloc<double> {}

class BoolSelectBloc extends SelectBloc<bool> {}

class StringSelectBloc extends SelectBloc<String> {}
