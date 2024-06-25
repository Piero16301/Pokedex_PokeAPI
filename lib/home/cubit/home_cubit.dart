import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
