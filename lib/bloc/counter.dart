import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.init = 0}) : super(init);

  int init;

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state > 0) {
      emit(state - 1);
    }
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}
