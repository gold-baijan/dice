import 'package:flutter/material.dart';

Widget pusto() {
  return const SizedBox(width: 8, height: 8);
}

Widget tochka() {
  return Container(
    width: 8,
    height: 8,
    decoration: const BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
    ),
  );
}

Widget storonyKosti(int number) {
List<List<bool>> otrisovka = [
  // 1
  [false, false, false, false, true, false, false, false, false], 
  // 2
  [true, false, false, false, false, false, false, false, true],
  // 3
  [true, false, false, false, true, false, false, false, true],
  // 4
  [true, false, true, false, false, false, true, false, true],
  // 5
  [true, false, true, false, true, false, true, false, true],
  // 6
  [true, false, true, true, false, true, true, false, true],
];
  List<bool> layout = otrisovka[number - 1];

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
