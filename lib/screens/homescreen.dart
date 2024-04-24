import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:mediconnect/widgets/curveclippath.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          backgroundColor: Colors.white.withOpacity(1),
          elevation: 20.0,
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
          height:1.8, 

), // Text style for unselected labels
        items: [
          BottomNavigationBarItem(
           
            icon:Container(
              padding: EdgeInsets.only(top:20.0),
             child:SvgPicture.asset(Images.home)),
              label:'Home',),
             BottomNavigationBarItem(
            
            icon:Container(
              padding: EdgeInsets.only(top:20.0),
              child:SvgPicture.asset(Images.activity)),label:'Activity', ),
             BottomNavigationBarItem(
            
            icon:Container(
              padding: EdgeInsets.only(top:20.0),
              child:Icon(Iconsax.activity)), label:'Notification',),
             BottomNavigationBarItem(
           
            icon:Container(
              padding: EdgeInsets.only(top:20.0),
              child:SvgPicture.asset(Images.profile)),  label:'Profile',)
        ],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper:CurvedEdges() ,
              child:  Container(
                color: Colors.blue.withOpacity(0.2),
                padding: EdgeInsets.all(0.0),
                width: double.infinity,
                child: SizedBox(
                  width: 430.0, // Adjust width as needed
                  height: 300.0, // Adjust height as needed
                  child: Stack(
                    children: [ChatBot(), User()],
                  ),
                )),
          )  ],)
        ),
      );
    
  }
}

class ChatBot extends StatelessWidget {
  const ChatBot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: 24.0,
      child: SizedBox(
        child: Image(image: AssetImage("assets/images/Bot.png")),
      ),
    );
  }
}

class User extends StatelessWidget {
  const User({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image(image: AssetImage("assets/images/Ellipse 78.png")),
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            Text('Welcome !',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(34, 31, 31, 1))),
            Text('Peace',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(34, 31, 31, 1))),
            Text('How is it going today ?',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(34, 31, 31, 0.5),
                    height:1.5,))
          ],
        ));
  }
}


