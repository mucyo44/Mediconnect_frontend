import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:mediconnect/screens/images.dart";
import "package:mediconnect/screens/reservationpage.dart";
import "package:readmore/readmore.dart";
import 'package:mediconnect/screens/bookAppointment.dart';

class HospitalDetail extends StatelessWidget {
  const HospitalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
            //  SizedBox(
            //   height: 60.0,
            // ),
            Row(
              children: [
                IconButton(
                  onPressed: () => {Get.back()},
                  icon: Icon(Icons.chevron_left),
                  iconSize: 40.0,
                ),
                SizedBox(
                  width: 70.0,
                ),
                Text(
                  'Hospital Details',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            // SizedBox(
            //   height: 50.0,
            // ),
            Row(
              children: [
                Image(image: AssetImage(Images.hospital1)),
                Column(
                  children: [
                    Text(
                      "King Faisal Hospital",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        wordSpacing: 3.0,
                        color: Color.fromRGBO(34, 31, 31, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            padding: EdgeInsets.all(2.5),
                            color: Color.fromRGBO(64, 124, 226, 0.17),
                            child: Row(children: [
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(64, 124, 226, 1),
                              ),
                              Text('4.7',
                                  style: TextStyle(
                                      color: Color.fromRGBO(64, 124, 226, 1)))
                            ])),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color.fromRGBO(34, 31, 31, 0.4),
                              size: 30,
                            ),
                            Text(
                              '800m away',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Text(
              'About',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 5.0),
            ),
            Container(
              width: 300.0,
              child: ReadMoreText(
                'Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut laore et dolore magna aliqua. Ut enim ad minim veniam...',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(34, 31, 31, 0.6)),
                textAlign: TextAlign.start,
                trimLength: 100,
                trimMode: TrimMode.Length,
                trimCollapsedText: 'Read more',
                trimExpandedText: 'Read less',
                moreStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(64, 126, 226, 1)),
                lessStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(64, 126, 226, 1)),
              ),
            ),
            SizedBox(height: 20.0,),
            BookAppointment(),
            SizedBox(height: 30,),
            Center(
              child:ElevatedButton(
                    onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReservationPage()));
                        },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(64, 124, 226, 1),
                      minimumSize: Size(303.53, 64.41)),
                  child: Text(
                    'Book Appointment',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
            )
             
          ]),
        )));
  }
}
