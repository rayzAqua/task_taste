part of 'select_bloc.dart';

@freezed
sealed class SelectState<T> with _$SelectState<T> {
  const factory SelectState({T? value}) = _SelectState<T>;
}

typedef IntSelectState = SelectState<int>;
typedef DoubleSelectState = SelectState<double>;
typedef BoolSelectState = SelectState<bool>;
typedef StringSelectState = SelectState<String>;
