import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediconnect/screens/ambulance.dart';
import 'package:mediconnect/screens/bookAppointment.dart';
import 'package:mediconnect/screens/creditCardForm.dart';
import 'package:mediconnect/screens/driver_detail.dart';
import 'package:mediconnect/screens/edit_profile.dart';
import 'package:mediconnect/screens/homescreen.dart';
import 'package:mediconnect/screens/hospitalslist.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:mediconnect/screens/map_page.dart';
import 'package:mediconnect/screens/medication.dart';
import 'package:mediconnect/screens/medication_add.dart';
import 'package:mediconnect/screens/notification.dart';
import 'package:mediconnect/screens/notificationscreen.dart';
import 'package:mediconnect/screens/onboardingscreen.dart';
import 'package:mediconnect/screens/payment.dart';
import 'package:mediconnect/screens/profile.dart';
import 'package:mediconnect/screens/reservationpage.dart';
import 'package:mediconnect/screens/reservationsucess.dart';
import 'package:mediconnect/screens/signinscreen.dart';
import 'package:mediconnect/screens/splashscreen.dart';
import 'package:mediconnect/screens/onBoardController.dart';
import 'package:mediconnect/screens/text.dart';
import 'package:mediconnect/screens/welcomescreen.dart';
import 'package:mediconnect/screens/signupscreen.dart';
import 'package:mediconnect/widgets/SearchPage.dart';
import 'package:mediconnect/widgets/navigation.dart';
import 'package:mediconnect/screens/cash.dart';
import 'package:mediconnect/screens/hospitaldetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home:SplashScreen());
  }
}
