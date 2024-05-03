import 'package:flutter/material.dart';




class MedicationPage extends StatelessWidget {
  const MedicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
        body:SingleChildScrollView(
          child: Column( 
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row( 
                children: [ 
                  SizedBox(width: 30.0,),
                 IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_left_outlined,
                  size: 40.0,
                ),
              ),
               SizedBox(width: 20.0,),
              Text(
                'Medication management',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color:Colors.black
                ),
              ),
                ],
              ),
              Padding(
                padding:EdgeInsets.only(top:40.0,left: 50.0),
                child:Text('Your medications', style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
                color: Colors.black


              ),)),
              Center(child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 64, 124, 226),
                      minimumSize: Size(200, 55)),
                  child: Text(
                    'Add medecine',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),)
               
               

            ],
          ),
        )
       
    );
  }
}