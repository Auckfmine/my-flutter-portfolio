import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.title, required this.onPress})
      : super(key: key);
  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          title,
          //textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontFamily: 'Montserrat',
              fontStyle: FontStyle.normal,
              fontSize: 15),
        ),
      ),
    );
  }
}
