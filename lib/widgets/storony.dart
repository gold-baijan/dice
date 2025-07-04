import 'package:flutter/material.dart';
import 'package:flutter_dice_/constant/dice_face.dart';

class Storony {
  static Widget pusto() => const SizedBox(width: 8, height: 8);

  static Widget tochka() => Container(
    width: 8,
    height: 8,
    decoration: const BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
    ),
  );

  static Widget build(int number) {
    final layout = DiceFace.layouts[number - 1];

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(3, (row) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            3,
            (col) => layout[row * 3 + col] ? tochka() : pusto(),
          ),
        );
      }),
    );
  }
}
