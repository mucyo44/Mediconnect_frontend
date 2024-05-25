import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mediconnect/screens/images.dart';

class CreditCardForm extends StatelessWidget {
  const CreditCardForm({super.key});

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
              'Add Card',
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
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CARD NUMBER',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(62, 73, 88, 1)),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.0,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(19),
                    CardNumberInputFormatter()
                  ],
                 decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      fillColor: Color.fromRGBO(249, 250, 251, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(213, 221, 224, 1),
                              style: BorderStyle.solid,
                              width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                          gapPadding: 4.0,
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(213, 221, 224, 1),
                              style: BorderStyle.solid,
                              width: 0.5))),
                ),
                SizedBox(height: 15.0),
                Text(
                  'CARD HOLDER NAME',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(62, 73, 88, 1)),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.0,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  inputFormatters: [],
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      fillColor: Color.fromRGBO(249, 250, 251, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(213, 221, 224, 1),
                              style: BorderStyle.solid,
                              width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                          gapPadding: 4.0,
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(213, 221, 224, 1),
                              style: BorderStyle.solid,
                              width: 0.5))),
                ),
          SizedBox(height: 15.0),
                Text(
                  'EXP.DATE',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(62, 73, 88, 1)),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.0,),
                Row
                (children: [
                  Expanded(child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      fillColor: Color.fromRGBO(249, 250, 251, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(213, 221, 224, 1),
                              style: BorderStyle.solid,
                              width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                          gapPadding: 4.0,
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(213, 221, 224, 1),
                              style: BorderStyle.solid,
                              width: 0.5)))
                  )),
                  SizedBox(width: 20.0,),
                   Expanded(child: TextFormField( 
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      fillColor: Color.fromRGBO(249, 250, 251, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(213, 221, 224, 1),
                              style: BorderStyle.solid,
                              width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                          gapPadding: 4.0,
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(213, 221, 224, 1),
                              style: BorderStyle.solid,
                              width: 0.5)))
                   ))
                ],)
              ],
            )),
            Container(
              margin:EdgeInsets.only(top:60.0),
              padding: EdgeInsets.only(left: 15.0),
              height: 135,
              decoration:BoxDecoration(
                color:Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(30.0 ),
                 boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius:10,
                  offset: Offset(0, 3)
                  )],
              ),
               
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                  Row(
                    children: [
                     SvgPicture.asset(Images.ic_scan),
                     SizedBox(width:10.0),
                     Text('Scan card')
                    ],
                  ),
                  Divider(
                    indent: 50,
                    color: Color.fromRGBO(213, 221, 224, 1),
                    height: 2,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Images.ic_id),
                      SizedBox(width:10.0),
                      Text('Add face id')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);

      int index = i + 1;

      if (index % 4 == 0 && inputData.length != index) {
        buffer.write("  ");
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length));
  }
}
