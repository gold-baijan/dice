import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dice_/cubit/dice_state.dart';


class DiceCubit extends Cubit<DiceState> {
  DiceCubit() : super(DiceState(1, 1));

  void roll() {
    final random = Random();
    emit(DiceState(random.nextInt(6) + 1, random.nextInt(6) + 1));
  }
}