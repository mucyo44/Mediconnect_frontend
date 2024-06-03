import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicationAdd extends StatefulWidget {
  const MedicationAdd({super.key});

  @override
  State<MedicationAdd> createState() => _MedicationAddState();
}

class _MedicationAddState extends State<MedicationAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.0),
          child: AppBar(
            titleSpacing: 50.0,
            leading: Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_left_outlined,
                  size: 40.0,
                ),
              ),
            ),
            leadingWidth: 80.0,
            title: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Add Medecine',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(249, 250, 251, 1),
                ),
                child: IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 40,
                  color: Colors.grey[500],
                  onPressed: () {},
                ),
              ),
              Container(
                  width: 280,
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Omeprazole',
                    hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(34, 31, 31, 0.4)),
                    fillColor: Color.fromRGBO(249, 250, 251, 1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0.0)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0.0)),
                  ))),
              Container(
                  width: 306,
                  height: 202,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Dosage :',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(34, 31, 31, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  50.0), // Adding spacing between the Text and TextFields
                          Container(
                            width: 52,
                            height: 16,
                            child: TextField(
                              cursorHeight: 20.0,
                              cursorColor: Color.fromRGBO(34, 34, 31, 0.4),
                              decoration: InputDecoration(
                                hintText: 'Quantity',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(34, 31, 31, 0.4),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ), // Adding spacing between the TextFields
                          Container(
                            width: 52,
                            height: 16,
                            child: TextField(
                              cursorHeight: 20.0,
                              cursorColor: Color.fromRGBO(34, 34, 31, 0.4),
                              decoration: InputDecoration(
                                hintText: 'Unit',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(34, 31, 31, 0.4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                              child: Text(
                            'Frequency :',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(34, 31, 31, 1)),
                          )),
                          SizedBox(width: 10),
                          Container(
                            width: 195,
                            height: 35,
                            child: TextField(
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
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                              child: Text(
                            'Start Date :',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(34, 31, 31, 1)),
                          )),
                          SizedBox(width: 10),
                          Container(
                            width: 195,
                            height: 35,
                            child: TextField(
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
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Reminder :',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(34, 31, 31, 1)),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
