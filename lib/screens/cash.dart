import 'package:flutter/material.dart';

class Cash extends StatelessWidget {
  const Cash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        resizeToAvoidBottomInset: false,
        body: Align(
          alignment: Alignment.topCenter,
          
            child: Column(
             
              children: [
                Row(
                  children: [
                    SizedBox(width: 15.0),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_left,
                          size: 26.0,
                        )),
                    const SizedBox(width: 60.0),
                    Text(
                      'Pay Cash',
                      style: TextStyle(
                          color: Color.fromARGB(255, 34, 31, 32),
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.all(30.0),
                    child: TextField(
                        decoration: InputDecoration(
                        labelText:'MOBILE NUMBER' ,  
                      labelStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                      fillColor: Color.fromRGBO(249, 250, 251, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                    ))),
                                Padding(
                    padding: EdgeInsets.all(30.0),
                    child: TextField(
                        decoration: InputDecoration(
                        labelText:'AMOUNT' ,  
                      labelStyle: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                      hintText: '2000',
                      hintStyle: TextStyle(
                         color: Color.fromRGBO(163, 162, 163, 1),
                         fontFamily: 'Inter',
                         fontSize: 8,
                         fontWeight:FontWeight.w300,



                      ),    
                      fillColor: Color.fromRGBO(249, 250, 251, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 0.0)),
                    ))),    
              
              
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(64, 124, 226, 1),
                      minimumSize: Size(150.0, 40.0)),
                  child: Text(
                    'Pay',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ],
            )));
  }
}
