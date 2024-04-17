import 'package:flutter/material.dart';
import 'package:mediconnect/screens/onboardingscreen.dart';
import 'package:mediconnect/screens/signinscreen.dart';
import 'package:mediconnect/screens/splashscreen.dart';
import 'package:mediconnect/screens/onBoardController.dart';
import 'package:mediconnect/screens/welcomescreen.dart';
import 'package:mediconnect/screens/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        useMaterial3: true
      ),
      home: const SigninScreen()
    );
  }
}
