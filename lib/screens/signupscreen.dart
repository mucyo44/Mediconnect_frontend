import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mediconnect/screens/homescreen.dart';
import 'package:mediconnect/screens/signinscreen.dart';
import 'package:mediconnect/widgets/password_field.dart';
import 'package:mediconnect/consts/icons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SignUpScreen> {
  TextEditingController passwordController = TextEditingController();
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(width: 15.0),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          size: 26.0,
                        )),
                    const SizedBox(width: 60.0),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color.fromARGB(255, 34, 31, 32),
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.all(30.0),
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                    ))),
                Padding(
                    padding: EdgeInsets.only(top: 0.0, left: 30.0, right: 30.0),
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outlined),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                    ))),
                Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_outlined),
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                    ))),
                Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                    child: PasswordField(
                      controller: passwordController,
                    )),
                const SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 30.0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        },
                      ),
                      Container(
                          width: 314.0,
                          margin: EdgeInsets.only(top: 20.0),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'I agree to the healthcare ',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(1))),
                            TextSpan(
                                text: ' Terms of Service',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 64, 124, 226))),
                            WidgetSpan(
                                child: SizedBox(
                              width: 4.0,
                            )),
                            TextSpan(
                                text: 'and',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(1))),
                            TextSpan(
                                text: ' Privacy Policy',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 64, 124, 226))),
                          ])))
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(1))),
                    SizedBox(
                      width: 4.0,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SigninScreen()));
                        },
                        child: Text(' Sign in',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 64, 124, 226))))
                  ],
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                   onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 64, 124, 226),
                      minimumSize: Size(358, 65)),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            )));
  }
}
