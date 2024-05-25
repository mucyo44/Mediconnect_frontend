import 'package:flutter/material.dart';
import 'package:mediconnect/widgets/custom_notification.dart';

class NotificationTap extends StatelessWidget {
  const NotificationTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body:Padding(
        padding: EdgeInsets.all(60),
        child: Column( 
          
          children: [
            Text("New",
            style:TextStyle( 
              fontFamily: 'Poppins',
              fontSize: 16.0,
              fontWeight: FontWeight.w600


            )),
            CustomNotification()
          ],
        ),)
    ));
  }
}
