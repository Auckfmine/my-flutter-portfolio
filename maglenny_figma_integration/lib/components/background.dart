import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
    required this.colors,
    required this.image,
  }) : super(key: key);
  final List<Color> colors;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: colors,
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
