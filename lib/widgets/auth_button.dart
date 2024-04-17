import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mediconnect/consts/icons.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;
  final String btnText;

  const AuthButton({super.key,required this.onPressed ,required this.iconPath,required this.btnText, });

  @override
  Widget build(BuildContext context){
     return Container(
      height:65.24 ,
      width:358.33 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          color:Color.fromRGBO(229,231,235,1),
          width:1.0

        )
      ),
      child : Row(
       
        children: [
           SizedBox(width:15.0),
          SvgPicture.asset(iconPath),
          SizedBox(width:45.0),
          Text(btnText, style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.0,
            fontWeight:FontWeight.w600,
            color: Color.fromRGBO(34, 31, 31, 1)


          )
          ,)
        ],)
     );
  }
}
