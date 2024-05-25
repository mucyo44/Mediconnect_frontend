import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediconnect/widgets/favourite.dart';

class Driver_Details extends StatelessWidget {
  const Driver_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(Icons.chevron_left,size: 30,)),

        leadingWidth: 100,    
        title: Text(
          'Driver Details',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(34, 31, 31, 1)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                  // height: 71,
                  // width: 106,
                  
                  
                // ),
                Image(image: AssetImage("assets/images/driver.png")),
                Container(
                    margin: EdgeInsets.only(left: 20.0,top:10),
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Patrick',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(34, 31, 31, 1)),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'King Faisal Hospital',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(34, 31, 31, 1)),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Container(
                            width: 104,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 2.0,
                                  color: Color.fromRGBO(213, 221, 224, 1),
                                )),
                            child: FavouriteIcon()),
                        SizedBox(
                          width: 40.0,
                        ),
                        Container(
                            width: 104,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 2.0,
                                  color: Color.fromRGBO(213, 221, 224, 1),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromRGBO(213, 221, 224, 1),
                                  ),
                                  child: IconButton(
                                    iconSize: 20,
                                    icon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.white.withOpacity(1),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                  child: SizedBox(
                                    child: Text(
                                      '2 years',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ],
                ))
              ],
            ),
            Container(
                width: 388,
                height: 300,
                margin: EdgeInsets.only(top:20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2.0,
                      color: Color.fromRGBO(213, 221, 224, 1),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Member since',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(34, 31, 31, 1)),
                    ),
                    Text(
                      '16.06.2017',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(62, 73, 88, 1)),
                    ),
                    SizedBox(height:15),
                    Divider(),
                    Text(
                      'Plate number',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(34, 31, 31, 1)),
                    ),
                    Text(
                      'HS785K',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(62, 73, 88, 1)),
                    ),
                     SizedBox(height:15),
                    Divider(),
                    Text(
                      'Phone number',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(34, 31, 31, 1)),
                    ),
                    Text(
                      '+250-788-903-127',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(62, 73, 88, 1)),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
