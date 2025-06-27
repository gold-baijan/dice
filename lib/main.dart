import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dice_/cubit/dice_cubit.dart';
import 'package:flutter_dice_/screen/kostiPage.dart';

void main() {
  runApp(const KostiApp());
}

class KostiApp extends StatelessWidget {
  const KostiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (_) => DiceCubit(), child: const KostiPage()),
    );
  }
}