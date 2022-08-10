import 'package:flutter/material.dart';
import 'dart:math';
import 'board_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int firstDiceIndex = 1;
  int secondDiceIndex = 2;

  void randomizeDices() {
    setState(() {
      firstDiceIndex = Random().nextInt(6) + 1;
      secondDiceIndex = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            leading: const Icon(Icons.gamepad),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text(
                  'Dicee',
                  style: TextStyle(fontFamily: 'Pacifico'),
                ),
                Text(
                  'Dicee',
                  style: TextStyle(fontFamily: 'Pacifico'),
                )
              ],
            )),
        backgroundColor: Colors.teal,
        body: Board(
          firstDiceIndex: firstDiceIndex,
          secondDiceIndex: secondDiceIndex,
          randomizeDices: randomizeDices,
        ));
  }
}
