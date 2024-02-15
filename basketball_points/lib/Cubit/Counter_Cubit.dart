import 'package:basketball_points/Cubit/Counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrimentState());

  // ignore: non_constant_identifier_names
  int TeamApoints = 0;

 // ignore: non_constant_identifier_names
 int TeamBpoints = 0;

  // ignore: non_constant_identifier_names
  void TeamIncriment(int ButtonNumber, String Team) {
    if (Team == 'A') {
      TeamApoints += ButtonNumber;

      emit(CounterAIncrimentState());
    } else {
      TeamBpoints += ButtonNumber;

      emit(CounterBIncrimentState());
    }
  }
}
