import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dice_/cubit/dice_cubit.dart';
import 'package:flutter_dice_/cubit/dice_state.dart';
import 'package:flutter_dice_/widgets/tochki.dart';

class KostiPage extends StatelessWidget {
  const KostiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final diceCubit = context.read<DiceCubit>();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 91, 31, 31),
      appBar: AppBar(
        title: const Text(
          'ИГРА В КОСТИ',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 71, 24, 24),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<DiceCubit, DiceState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildDice(number: state.left),
                    BuildDice(number: state.right),
                  ],
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: diceCubit.roll,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
              ),
              child: const Text(
                'Бросок',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 91, 31, 31),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
