import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mediconnect/screens/images.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var _value = "-1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(Icons.chevron_left)),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage(Images.user)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Iconsax.edit),
                      iconSize: 30,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InputField(
                    text: "Full name",
                    hinttext: 'Peace Lucy Stephanie',
                  ),
                  InputField(
                    text: "Email",
                    hinttext: 'lucypeace12@gmail.com',
                  ),
                  Text(
                    "Gender",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                    textAlign: TextAlign.left,
                  ),
                DropdownButtonFormField(
                      value: _value,
                      icon:SvgPicture.asset('assets/images/Google.svg',color: Colors.red,),
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(34, 31, 31, 0.1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.0)),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text('Female'),
                          value: "-1",
                        ),
                        DropdownMenuItem(
                          child: Text('Male'),
                          value: "1",
                        )
                      ],
                      onChanged: (v) {}),
                      SizedBox(height: 30,),
                  InputField(
                    text: "Phone Number",
                    hinttext: '+2507990786546',
                  ),
                ],
              )),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(64, 124, 226, 1),
                      side: BorderSide.none,
                      shape: StadiumBorder()),
                  child: Text(
                    'Save Profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.text,
    required this.hinttext,
  }) : super(key: key);
  final String text;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(0, 0, 0, 1)),
          textAlign: TextAlign.left,
        ),
        TextField(
            decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(34, 31, 31, 0.4)),
          fillColor: Color.fromRGBO(34, 31, 31, 0.1),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide(color: Colors.transparent, width: 0.0)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide(color: Colors.transparent, width: 0.0)),
        )),
        SizedBox(height:30)
      ],
    );
  }
}
