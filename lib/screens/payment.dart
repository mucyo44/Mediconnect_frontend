import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mediconnect/screens/images.dart';



class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold( 
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
                'Payment Options',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),

      body:Center(
           child: Container(
            width:422.0,
            height: 309.0,
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            decoration: BoxDecoration(
              color:Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight:Radius.circular(30.0) ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius:10,
                  offset: Offset(0, 3)
                  )]
            ),
             child:Column( 
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Select payment ', style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color:Color.fromRGBO(67, 73, 88, 1)
                  

                ),) ,
                SizedBox(height: 20.0,),
                Container(
                  width:380.78,
                 height: 59.23,
                 padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                 color:Color.fromRGBO(255, 255, 255, 1),
                 borderRadius: BorderRadius.circular(10.0),
                 boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius:10,
                  offset: Offset(0, 3)
                  )]
            ), 
                  child: Row(children: [ 
                    SvgPicture.asset(Images.card),
                    SizedBox(width:10.0),
                   Text('****8295'),
                    SizedBox(width:170.0),
                   SvgPicture.asset(Images.ic_arrow)
                  ],),  
                ),
                SizedBox(height: 20.0,),
                                Container(
                  width:380.78,
                 height: 59.23,
                 padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                 color:Color.fromRGBO(255, 255, 255, 1),
                 borderRadius: BorderRadius.circular(10.0),
                 boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius:10,
                  offset: Offset(0, 3)
                  )]
            ), 
                  child: Row(children: [ 
                     SvgPicture.asset(Images.ic_visa),
                     SizedBox(width:10.0),
                   Text('****3704'),
                    SizedBox(width:170.0),
                    SvgPicture.asset(Images.ic_arrow)
                  ],),  
                ),
                  SizedBox(height: 20.0,),
                               Container(
                  width:380.78,
                 height: 59.23,
                 padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                 color:Color.fromRGBO(255, 255, 255, 1),
                 borderRadius: BorderRadius.circular(10.0),
                 boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius:10,
                  offset: Offset(0, 3)
                  )]
            ), 
                  child: Row(children: [ 
                    Container(
                      margin: EdgeInsets.only(top:10.0),
                    child:Image.asset(Images.ic_cash),
                    ),
                     
                   Text('Cash', style: TextStyle( 
                    fontFamily: 'Inter',
                    fontSize:15.0,
                    fontWeight: FontWeight.w400,


                   ),),
                    SizedBox(width:185.0),
                    SvgPicture.asset(Images.ic_arrow)
                  ],),  
                ),

              ],

             ))
      )

    ));
  }
} 