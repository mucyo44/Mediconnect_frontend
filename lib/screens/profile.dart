import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mediconnect/screens/edit_profile.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:mediconnect/screens/setting.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.chevron_left)),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top:30,bottom: 60),
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(249, 250, 251, 1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(image: AssetImage(Images.user)),
                        ),
                      ),
                      Text(
                        'Peace Lucy Stephanie',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 357,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(249, 250, 251, 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfileMenuWidget(
                        icon: Iconsax.user,
                        title: 'Edit Profile',
                        onPress: () =>Get.to(()=>const EditProfile()),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        thickness: 1.0,
                      ),
                      ProfileMenuWidget(
                        icon: Icons.settings,
                        title: 'Settings',
                        onPress: () =>Get.to(()=> const SettingPage()),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                      ),
                      ProfileMenuWidget(
                        icon: Icons.history,
                        title: 'History',
                        onPress: () {},
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 357,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(249, 250, 251, 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfileMenuWidget(
                        icon: Iconsax.user,
                        title: 'FAQs',
                        onPress: () {},
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        thickness: 1.0,
                      ),
                      ProfileMenuWidget(
                        icon: Icons.settings,
                        title: 'Rate US',
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 357,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(249, 250, 251, 1)),
                  child: ProfileMenuWidget(
                    icon: Iconsax.user,
                    title: 'Logout',
                    onPress: () {},
                    iconColor: Colors.red,
                    endIcon: false,
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPress,
      this.endIcon = true,
      this.iconColor})
      : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape:RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(20) ),
      onTap: onPress,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(64, 124, 226, 1),
        ),
        child: Icon(
          icon,
          color: (iconColor ?? Colors.white).withOpacity(1),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 1)),
      ),
      trailing: endIcon
          ? Icon(
              Icons.chevron_right,
              color: Colors.grey,
            )
          : null,
    );
  }
}
