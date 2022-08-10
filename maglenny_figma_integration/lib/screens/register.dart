import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maglenny_figma_integration/components/background.dart';
import 'package:maglenny_figma_integration/components/button.dart';
import 'package:maglenny_figma_integration/components/raised_button.dart';
import 'package:maglenny_figma_integration/components/text_input.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(
            image: 'images/bg_register.png',
            colors: [
              Color(0xff7431D7),
              Color(0xffFE2F67),
              Color(0xffFF9A58),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CostumTextInput(isEmail: true),
              CostumTextInput(
                isPassword: true,
              ),
              CostumTextInput(
                isPassowrdVerification: true,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                title: 'CREATE NEW ACCOUNT',
                onPress: () {},
              ),
              CostumLink(
                onPressed: () => Navigator.pushNamed(context, '/sign-in'),
                title: 'SIGN IN',
              )
            ],
          )
        ],
      ),
    );
  }
}
