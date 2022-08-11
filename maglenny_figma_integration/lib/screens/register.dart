import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maglenny_figma_integration/components/button.dart';
import 'package:maglenny_figma_integration/components/raised_button.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff7431D7),
                  Color(0xffFE2F67),
                  Color(0xffFF9A58),
                ],
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/background.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                title: 'SIGN IN',
                onPress: () {},
              ),
              CostumLink(
                onPressed: () {},
                title: 'NEW ACCOUNT',
              )
            ],
          )
        ],
      ),
    );
  }
}
