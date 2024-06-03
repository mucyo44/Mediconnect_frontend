import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:mediconnect/widgets/custom_notification.dart';
import 'package:intl/intl.dart';

class NotificationTap extends StatefulWidget {
  const NotificationTap({super.key});

  @override
  State<NotificationTap> createState() => _NotificationTapState();
}

class _NotificationTapState extends State<NotificationTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.chevron_left)),
          title: Text('Notification'),
          centerTitle: true,
        ),
        body: Padding(padding: EdgeInsets.all(20.0), 
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
          Text('New',style: TextStyle( 
            fontFamily: 'Poppins',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(34, 34, 31,1)
          ),),  
          Notification( 
          image: Images.hospital1,
          Title: 'Legacy Clinics',
          subtitle: 'Number 56, you can now enter and meet with your dermatologist.',
        ),
         Notification( 
          image: Images.hospital1,
          Title: 'Legacy Clinics',
          subtitle: 'Number 56, you can now enter and meet with your dermatologist.',
        ),
        Text('Earier Today',style: TextStyle( 
            fontFamily: 'Poppins',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(34, 34, 31,1)
          ),), 
          Notification( 
          image: Images.hospital1,
          Title: 'Legacy Clinics',
          subtitle: 'Number 56, you can now enter and meet with your dermatologist.',
        ), 
          Text('Yesterday',style: TextStyle( 
            fontFamily: 'Poppins',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(34, 34, 31,1)
          ),),  
         Notification( 
          image: Images.hospital1,
          Title: 'Legacy Clinics',
          subtitle: 'Number 56, you can now enter and meet with your dermatologist.',
        ),
         
         Notification( 
          image: Images.hospital1,
          Title: 'Legacy Clinics',
          subtitle: 'Number 56, you can now enter and meet with your dermatologist.',
        ),
         Notification( 
          image: Images.hospital1,
          Title: 'Legacy Clinics',
          subtitle: 'Number 56, you can now enter and meet with your dermatologist.',
        ),
      
          ]
        )
        )
        );
        
  }
}

class Notification extends StatelessWidget {
  const Notification({
    super.key, 
    required this.image,
    required this.Title,
    required this.subtitle
  });
  final String image;
  final String Title;
  final String subtitle;
  
  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsets.only(bottom: 10.0),
        width: 329.0,
        color: Color.fromRGBO(249, 250, 251, 1),
        child: ListTile(
          leading: Container(
            width: 40.0,
            height: 40.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(100.0)),
            child:Image(image:AssetImage(image))
          ),
          title: Text(Title,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600)),
          subtitle: Text(
            subtitle,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 8.0,
                fontWeight: FontWeight.w400),
          ),
          trailing: Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(DateFormat.jm().format(DateTime.now()))),
        ));
  }
}
