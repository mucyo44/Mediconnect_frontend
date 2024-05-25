import "dart:html";

import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:get/get.dart";
import "package:mediconnect/screens/homescreen.dart";
import "package:mediconnect/screens/images.dart";
import "package:mediconnect/screens/medication.dart";
import "package:mediconnect/screens/notification.dart";
import "package:mediconnect/screens/profile.dart";
import "package:mediconnect/screens/signinscreen.dart";
import "package:mediconnect/screens/signupscreen.dart";
import 'package:iconsax/iconsax.dart';
import "package:mediconnect/screens/splashscreen.dart";

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
          elevation:20.0,  
          currentIndex: controller.selectedIndex.value,
          
          onTap: (index) {
                  controller.selectedIndex.value = index;
               },
          backgroundColor: Colors.white.withOpacity(1),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(64, 124, 226, 1), // Color for the selected item
          unselectedItemColor: Color.fromRGBO(34, 31, 31, 0.6), // Color for unselected items
          selectedLabelStyle: TextStyle(color: Color.fromRGBO(64, 124, 226, 1),
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight:FontWeight.bold,
          height: 1.8,
          ), // Text style for selected label
          unselectedLabelStyle: TextStyle(color: Color.fromRGBO(34, 31, 31, 0.6),
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight:FontWeight.bold,
          height:1.8,),
           items: [
          BottomNavigationBarItem(
           
            icon:Container(
              padding: EdgeInsets.only(top:20.0),
             child:Icon(Icons.home_filled,size:30.0)),
              label:'Home',),
             BottomNavigationBarItem(
            
            icon:Container(
              padding: EdgeInsets.only(top:20.0),
              child:Icon(Icons.local_activity,size:30.0)),label:'Activity', ),
             BottomNavigationBarItem(
            
            icon:Container(
              padding: EdgeInsets.only(top:20.0),
              child:Icon(Icons.notifications_none_outlined,size:30.0)), label:'Notification',),
             BottomNavigationBarItem(
           
            icon:Container(
              padding: EdgeInsets.only(top:20.0),
              child:Icon(Iconsax.user,size:30.0)),  label:'Profile',)
        ],
         
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const MedicationPage(),
    const NotificationScreen(),
    const ProfilePage()
  ];
}
