import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:get/get.dart";
import "package:mediconnect/screens/homescreen.dart";
import "package:mediconnect/screens/images.dart";
import "package:mediconnect/screens/signinscreen.dart";
import "package:mediconnect/screens/signupscreen.dart";
import "package:mediconnect/screens/splashscreen.dart";

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 80,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(
                  icon: SvgPicture.asset(Images.home), label: 'Home'),
              NavigationDestination(
                  icon: SvgPicture.asset(Images.activity), label: 'Activity'),
              NavigationDestination(
                  icon: SvgPicture.asset(Images.notification),
                  label: 'Notification'),
              NavigationDestination(
                  icon: SvgPicture.asset(Images.profile), label: 'Profile')
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
    const SplashScreen(),
    const SignUpScreen(),
    const SigninScreen()
  ];
}
