import 'package:flutter/material.dart';
import 'package:maglenny_figma_integration/screens/login.dart';
import 'package:maglenny_figma_integration/screens/register.dart';
import 'package:maglenny_figma_integration/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/sign-in': (context) => const Login(),
        '/sign-up': (context) => const Register()
      },
    );
  }
}
