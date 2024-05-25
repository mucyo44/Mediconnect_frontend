import "package:flutter/material.dart";
import 'package:iconsax/iconsax.dart';
import 'package:mediconnect/screens/payment.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_left,
                          size: 26.0,
                        )),
                    const SizedBox(width: 60.0),
                    Text(
                      'Appointment booking',
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
                     fillColor: Color.fromRGBO(249, 250, 251, 1),
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
                    padding: EdgeInsets.only(bottom:30.0,left:30.0,right: 30.0),
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outlined),
                      hintText: 'Enter your birth date',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                    fillColor: Color.fromRGBO(249, 250, 251, 1),
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
                     padding: EdgeInsets.only(bottom:30.0,left:30.0,right: 30.0),
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outlined),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                     fillColor: Color.fromRGBO(249, 250, 251, 1),
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
                    padding: EdgeInsets.only(bottom:30.0,left:30.0,right: 30.0),
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outlined),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                      fillColor: Color.fromRGBO(249, 250, 251, 1),
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
                    padding: EdgeInsets.only(bottom:30.0,left:30.0,right: 30.0),
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outlined),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                      fillColor: Color.fromRGBO(249, 250, 251, 1),
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
                    padding: EdgeInsets.only(bottom:30.0,left:30.0,right: 30.0),
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outlined),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                      fillColor: Color.fromRGBO(249, 250, 251, 1),

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
                    

                const SizedBox(height: 25.0),
                ElevatedButton(
                    onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentPage()));
                        },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(64, 124, 226, 1),
                      minimumSize: Size(303.53, 64.41)),
                  child: Text(
                    'Make a reservation',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ],
            )));
  }
}
