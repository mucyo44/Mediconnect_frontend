import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:intl/intl.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Align(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wallpaper.jpg"),fit: BoxFit.cover)
        ),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           SizedBox(height: 100.0,),
          Image(image:AssetImage(Images.padlock),
          
         ),
          Text(DateFormat.jm().format(DateTime.now()),
          style: TextStyle(fontSize:40 ,
          color:Color.fromRGBO(255, 255, 255, 1),
          fontWeight: FontWeight.w400
          ),),
        
          Text(DateFormat.MMMMEEEEd().format(DateTime.now()),
          style: TextStyle(
            fontSize: 15,
            color:Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.w200)),
          SizedBox(height: 100.0,),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromRGBO(255, 255, 255, 0.66),
                  margin: EdgeInsets.symmetric(horizontal:20.0 ),
                  elevation: 2,
                    child: ListTile(
                  leading:Image.asset(Images.notilogo),
                  title: Text(
                    'MediConnect',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  subtitle: Text(
                      'You are now number 30, get ready we’ll continue to notify you',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 7.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(34, 31, 31, 0.93))),
                  
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  minLeadingWidth: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ));
              },
              separatorBuilder: (context, index) =>
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
              itemCount: 4,
            ),
          )
        ],
      )),
    ));
  }
}
