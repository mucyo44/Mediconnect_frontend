import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mediconnect/screens/images.dart';

class  Reservation extends StatelessWidget {
  const Reservation ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Stack(
        children: [
        Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200.0,
              height: 200.0,
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(64, 124, 226, 1)),
              child: Image.asset(Images.checked),
            ),
            SizedBox(height:56.0 ,),
            Container(
              
              alignment: Alignment.center,
              width:290.0 ,
              height: 48.0,
           child: Text('Making a reservation successfully, Thank you!!!',style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color:Color.fromRGBO(0, 0, 0, 1)
            ),
            textAlign:TextAlign.center),
            )

          ],
        )),
      Positioned(
        right: 56.0,
        bottom: kBottomNavigationBarHeight +32.0 ,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Color.fromARGB(255, 49, 106, 228),
                minimumSize: Size(56, 56)),
            child: Icon(
              size: 30.0,
              Icons.arrow_forward,
              color: const Color.fromARGB(255, 255, 255, 255),
            )))]));
  }
}
