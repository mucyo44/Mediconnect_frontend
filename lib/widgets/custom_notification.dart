import 'package:flutter/material.dart';
import 'package:mediconnect/screens/images.dart';

class CustomNotification extends StatefulWidget {
  const CustomNotification({super.key});

  @override
  State<CustomNotification> createState() => _CustomNotificationState();
}

class _CustomNotificationState extends State<CustomNotification> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      // color: Color.fromRGBO(255, 255, 255, 0.66),
      // width: 32,
      // child: Row(
      // children: [ 
        // CircleAvatar(
        //   radius: 25,
        //   backgroundImage:AssetImage(Images.hospital2) ,
        // ),
        // const SizedBox( width:15),
        // Column( 
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [ 
          
            // Text('Legacy Clinic',
            // style: TextStyle(
            //   fontFamily: 'Poppins',
            //   fontSize: 10,
            //   fontWeight: FontWeight.w600
            // ),),
      //       Text('Number 56, you can now enter and meet with your dermatologist.',
      //       style: TextStyle(
      //         fontFamily: 'Poppins',
      //         fontSize: 10.0,
      //         fontWeight: FontWeight.w400
      //       ),)
      //     ],
      //   )
      // ],)
    );
  }
}