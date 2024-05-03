import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mediconnect/consts/size.dart';
import 'package:mediconnect/screens/images.dart';


class SearchBars extends StatelessWidget{
  SearchBars({super.key});


  @override
  Widget build(BuildContext context){
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 48.0),
      child:Center(
        child:Container(
        width:Sizes.getScreenWidth(context),
        padding: EdgeInsets.all(10.0),
        decoration:BoxDecoration(
          color: Color.fromRGBO(251, 251, 251, 1),
          borderRadius:BorderRadius.circular(50.0),
          border: Border.all(color: Color.fromRGBO(232, 243, 241, 1)),
         
      ),
       child:Row(
        children: [
          SizedBox(width:40.0),
          Text('Search doctors,hospitals ...',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize:14,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(34, 31, 31, 0.4)

            )),
            SizedBox(width:30.0),
            SvgPicture.asset(Images.search,
            color: Color.fromRGBO(34, 31, 31, 0.4)
            )
            
        ],)
    )));
  }
}

