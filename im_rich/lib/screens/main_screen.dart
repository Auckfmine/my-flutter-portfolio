import 'dart:developer';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 43, 46),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 18, 19),
        title: const Center(
          child: Text("Im Rich"),
        ),
      ),
      body: GestureDetector(
        onTap: () => log('diamond tapped ! '),
        child: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    );
  }
}
