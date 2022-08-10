import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maglenny_figma_integration/components/background.dart';
import 'package:maglenny_figma_integration/components/button.dart';
import 'package:maglenny_figma_integration/components/raised_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  void navigateToURL(BuildContext context, String url) {
    log('pressed btw');
    Navigator.pushNamed(context, url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(colors: [
            Color(0xff7431D7),
            Color(0xffFE2F67),
            Color(0xffFF9A58),
          ], image: 'images/background.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                title: 'SIGN IN',
                onPress: () => navigateToURL(context, '/sign-in'),
              ),
              CostumLink(
                onPressed: () => {
                  log('pressed btw '),
                  Navigator.pushNamed(context, '/sign-up')
                },
                title: 'NEW ACCOUNT',
              )
            ],
          )
        ],
      ),
    );
  }
}
