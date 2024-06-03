import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mediconnect/screens/Language.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.chevron_left)),
          title: Text('Settings'),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
          width: 362.0,
          height: 560.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(249, 250, 251, 1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileMenuWidget(
                icon: Iconsax.moon,
                title: 'Dark mode',
                onPress: () {},
                switchwidget: true,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                thickness: 1.0,
              ),
              ProfileMenuWidget(
                icon: Icons.settings,
                title: 'Notifications',
                onPress: () {},
                switchwidget: true,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                leading: Icon(Iconsax.language_circle),
                title: Text(
                  'Language',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                trailing: SizedBox(
                  width: 80.0, // Adjust the width as necessary
                  child: Row(
                    mainAxisSize: MainAxisSize
                        .min, // Ensures the Row takes up minimum space needed
                    children: [
                      Text(
                        'English',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 8.0,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(153, 153, 153, 1),
                        ),
                      ),
                      Spacer(),
                      IconButton( 
                        icon:Icon(Icons.chevron_right),
                        onPressed: ()=>Get.to(LanguagePage()),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              ProfileMenuWidget(
                icon: Icons.history,
                title: 'Password',
                onPress: () {},
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              ProfileMenuWidget(
                icon: Icons.history,
                title: 'Security and Two-factor authentication',
                onPress: () {},
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              ProfileMenuWidget(
                icon: Icons.history,
                title: 'Permissions',
                onPress: () {},
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              ProfileMenuWidget(
                icon: Icons.history,
                title: 'About',
                onPress: () {},
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              ProfileMenuWidget(
                icon: Icons.history,
                title: 'Terms and Privacy Policy',
                onPress: () {},
              ),
            ],
          ),
        )));
  }
}

class ProfileMenuWidget extends StatefulWidget {
  const ProfileMenuWidget(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPress,
      this.switchwidget = false,
      this.iconColor})
      : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool switchwidget;
  final Color? iconColor;

  @override
  State<ProfileMenuWidget> createState() => _ProfileMenuWidgetState();
}

class _ProfileMenuWidgetState extends State<ProfileMenuWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onTap: widget.onPress,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(64, 124, 226, 1),
        ),
        child: Icon(
          widget.icon,
          color: (widget.iconColor ?? Colors.white).withOpacity(1),
        ),
      ),
      title: Text(
        widget.title,
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(0, 0, 0, 1)),
      ),
      trailing: widget.switchwidget
          ? Switch(
              value: isSwitched,
              onChanged: (Value) {
                setState(() {
                  isSwitched = Value;
                });
              })
          : null,
    );
  }
}
