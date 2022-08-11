import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maglenny_figma_integration/components/background.dart';
import 'package:maglenny_figma_integration/components/button.dart';
import 'package:maglenny_figma_integration/components/raised_button.dart';
import 'package:maglenny_figma_integration/components/text_input.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(
            image: 'images/bg_login.png',
            colors: [
              Color(0xff7431D7),
              Color(0xffFE2F67),
              Color(0xffFF9A58),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CostumTextInput(isEmail: true),
              CostumTextInput(
                isPassword: true,
              )
            ],
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
