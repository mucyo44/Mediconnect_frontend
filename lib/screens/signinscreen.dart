import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mediconnect/consts/icons.dart';
import 'package:mediconnect/screens/homescreen.dart';
import 'package:mediconnect/screens/signupscreen.dart';
import 'package:mediconnect/widgets/auth_button.dart';
import 'package:mediconnect/widgets/password_field.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController passwordController = TextEditingController();

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
                      'Sign In',
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
                    padding: EdgeInsets.only(top: 0.0, left: 30.0, right: 30.0),
                    child: PasswordField(
                      controller: passwordController,
                    )),
                Padding(
                    padding: EdgeInsets.only(right: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text('ForgetPassword',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 64, 124, 226),
                                  fontFamily: 'Poppins',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                )))
                      ],
                    )),
                const SizedBox(height: 25.0),
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
                    'Sign In',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account?',
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
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text(' Sign up',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 64, 124, 226))))
                  ],
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        child: Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                            indent: 60,
                            endIndent: 5)),
                    Text(
                      ' OR',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.1)),
                    ),
                    Flexible(
                        child: Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                            indent: 5,
                            endIndent: 60)),
                  ],
                ),
                const SizedBox(height: 30.0),
                AuthButton(
                  onPressed: () {},
                  iconPath: Icons_im.google,
                  btnText: 'Sign in with Google',
                ),
                const SizedBox(height: 30.0),
                AuthButton(
                  onPressed: () {},
                  iconPath: Icons_im.fb,
                  btnText: 'Sign in with Facebook',
                )
              ],
            )));
  }
}
