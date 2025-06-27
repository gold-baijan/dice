import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dice_/cubit/dice_state.dart';

class DiceCubit extends Cubit<DiceState> {
  DiceCubit() : super(DiceState(1, 1));

  void roll() {
    final random = Random();
    final value1 = random.nextInt(6) + 1;
    final value2 = random.nextInt(6) + 1;
    emit(DiceState(value1, value2));
  }
}
