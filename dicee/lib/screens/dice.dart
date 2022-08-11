import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice(
      {Key? key, required this.randomizeDices, required this.firstDiceIndex})
      : super(key: key);
  final VoidCallback randomizeDices;
  final int firstDiceIndex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: randomizeDices,
        child: Image.asset('images/dice$firstDiceIndex.png'),
      ),
    );
  }
}
