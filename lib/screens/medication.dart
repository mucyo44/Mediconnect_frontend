import 'package:flutter/material.dart';
import 'package:mediconnect/screens/images.dart';

class MedicationPage extends StatelessWidget {
  const MedicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 30.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chevron_left_outlined,
                      size: 40.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Medication management',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 50.0),
                  child: Text(
                    'Your medications',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )),
              MedecineList(
                  image: Images.insulin,
                  headline: 'Insulin',
                  title: 'Dosage: 0.5 ml',
                  subtitle1: 'Time: 7:00 AM ',
                  subtitle2: 'Daily'),
                 
              MedecineList(
                  image: Images.insulin,
                  headline: 'Omeprazole ',
                  title: 'Dosage: 2mg',
                  subtitle1: 'Time: 7:00 AM ',
                  subtitle2: 'Daily'),
                  SizedBox(height: 40.0,),
              Center(
                child: ElevatedButton(
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
                ),
              )
            ],
          ),
        ));
  }
}

class MedecineList extends StatelessWidget {
  const MedecineList(
      {super.key,
      required this.image,
      required this.headline,
      required this.title,
      required this.subtitle1,
      required this.subtitle2});
  final String image, headline, title, subtitle1, subtitle2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left:40.0,bottom: 10.0),
        child: Row(children: [
      Image.asset(image),
      Column(
        children: [
          Text(headline , style: TextStyle( 
            fontFamily: 'Poppins',
            fontSize : 12,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
          textAlign: TextAlign.left,),
          Text(title),
          Row(
            children: [Text(subtitle1 , 
              style: TextStyle( 
            fontFamily: 'Poppins',
            fontSize : 12,
            fontWeight: FontWeight.w500,
          ),
            ), 
            Text('--',
            style: TextStyle( 
            fontFamily: 'Poppins',
            fontSize : 10,
            fontWeight: FontWeight.w300,
          ),), 
          Text(subtitle2,
          style: TextStyle( 
            fontFamily: 'Poppins',
            fontSize : 10,
            fontWeight: FontWeight.w300,
          ),)],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(64, 124, 226, 1),
                    minimumSize: Size(17, 40)),
                child: Text(
                  'Modify',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(
               width: 10.0,
              ),
              OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(17, 40),
                  side: BorderSide(color: Color.fromRGBO(64, 124, 226, 1)),
                ),
                child: Text(
                  'Remove',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(64, 124, 226, 1),
                  ),
                ),
              )
            ],
          )
        ],
      )
    ]));
  }
}
