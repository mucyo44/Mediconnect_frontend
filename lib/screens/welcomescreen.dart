import 'package:flutter/material.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:mediconnect/screens/signinscreen.dart';
import 'package:mediconnect/screens/signupscreen.dart';
import 'package:mediconnect/screens/text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(Images.logo),
            height: 300.0,
            width: 330.0,
          ),
          Column(
            children: [
              Text(
                Texts.headline,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: Color.fromARGB(255, 43, 43, 44),
                    height: 0.0),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                width: 300.0,
                height: 48,
                child: Text(
                  Texts.subheadline,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: Color.fromARGB(255, 43, 43, 44),
                      height: 0.0),
                  textAlign: TextAlign.center,
                ),
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SigninScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(64, 124, 226, 1),
                    minimumSize: Size(250, 50)),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 50),
                  side: BorderSide(color: Color.fromRGBO(64, 124, 226, 1)),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(64, 124, 226, 1),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
