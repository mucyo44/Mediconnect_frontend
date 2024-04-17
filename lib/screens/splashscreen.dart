import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mediconnect/screens/onboardingscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF98b3e1),
            appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
            body: Stack(
              children: [
                Container(
                  width: 330,
                  height: 462,
                  padding: EdgeInsets.fromLTRB(60.0, 50.0, 0.0, 0.0),
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  width: 251.18,
                  height: 372.8,
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 85.0, 0.0),
                  margin: EdgeInsets.fromLTRB(0.0, 400.0, 0.0, 0.0),
                  child: Image.asset('assets/images/Group 60.png'),
                ),
              ],
            )));
  }
}
