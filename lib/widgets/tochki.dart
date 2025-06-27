import 'package:flutter/material.dart';
import 'package:flutter_dice_/widgets/storony.dart';

class BuildDice extends StatelessWidget {
  const BuildDice({
    super.key,
    required this.number,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black45, blurRadius: 8, offset: Offset(4, 4)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Storony.build(number),
      ),
    );
  }
}
