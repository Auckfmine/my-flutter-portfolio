import 'package:dicee/screens/dice.dart';
import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  const Board(
      {Key? key,
      required this.firstDiceIndex,
      required this.secondDiceIndex,
      required this.randomizeDices})
      : super(key: key);
  final int firstDiceIndex;
  final int secondDiceIndex;
  final VoidCallback randomizeDices;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Dice(firstDiceIndex: firstDiceIndex, randomizeDices: randomizeDices),
          Dice(firstDiceIndex: secondDiceIndex, randomizeDices: randomizeDices)
        ],
      ),
    );
  }
}
