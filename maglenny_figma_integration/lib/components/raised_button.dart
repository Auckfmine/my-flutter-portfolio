import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CostumLink extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const CostumLink({Key? key, required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: GestureDetector(
        onTap: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              decoration: TextDecoration.underline,
              decorationThickness: 2,
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
