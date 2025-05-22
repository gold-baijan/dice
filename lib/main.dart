import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_dice_/dice.dart';

void main() {
  runApp(const Kosti());
}

class Kosti extends StatelessWidget {
  const Kosti({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KostiPage(),
    );
  }
}

class KostiPage extends StatefulWidget {
  const KostiPage({super.key});

  @override
  KostiPageState createState() => KostiPageState();
}

class KostiPageState extends State<KostiPage> {
  int levo = 1;
  int pravo = 1;

  void brosok() {
    setState(() {
      levo = Random().nextInt(6) + 1;
      pravo = Random().nextInt(6) + 1;
    });
  }

  Widget buildDice(int number) {
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
        child: storonyKosti(number),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 91, 31, 31),
      appBar: AppBar(
        title: const Text(
          'ИГРА В КОСТИ',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        backgroundColor: const Color.fromARGB(255, 71, 24, 24),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [buildDice(levo), buildDice(pravo)],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: brosok,
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





