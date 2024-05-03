import 'package:flutter/material.dart';
import 'package:mediconnect/screens/ambulance.dart';
import 'package:mediconnect/screens/homescreen.dart';
import 'package:mediconnect/screens/medication.dart';
import 'package:mediconnect/screens/onboardingscreen.dart';
import 'package:mediconnect/screens/payment.dart';
import 'package:mediconnect/screens/reservationpage.dart';
import 'package:mediconnect/screens/reservationsucess.dart';
import 'package:mediconnect/screens/signinscreen.dart';
import 'package:mediconnect/screens/splashscreen.dart';
import 'package:mediconnect/screens/onBoardController.dart';
import 'package:mediconnect/screens/welcomescreen.dart';
import 'package:mediconnect/screens/signupscreen.dart';
import 'package:mediconnect/widgets/SearchPage.dart';
import 'package:mediconnect/widgets/navigation.dart';
import 'package:mediconnect/screens/cash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home:HomeScreen());
  }
}
