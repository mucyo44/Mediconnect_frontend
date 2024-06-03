import "package:flutter/material.dart";

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

enum Language { English, Kinyarwanda, French }

class _LanguagePageState extends State<LanguagePage> {
  Language _selectedLanguage = Language.English;
  @override
  Widget build(BuildContext context) {
    return Material(
        child:Column(
          children: [
          SizedBox(height: 20.0,),  
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
            'Language',
            style: TextStyle(
                color: Color.fromARGB(255, 34, 31, 32),
                fontFamily: 'Poppins',
                fontSize: 18.0,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      Container(
        height: 180,
        margin: EdgeInsets.all(40.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(249, 250, 251, 1),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'English',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(34, 34, 31, 1)),
                ),
                Expanded(child: SizedBox()),
                Radio<Language>(
                  value: Language.English,
                  groupValue: _selectedLanguage,
                  onChanged: (Language? value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Color.fromRGBO(228, 228, 229, 1),
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Kinyarwanda',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(34, 34, 31, 1)),
                ),
                Expanded(child: SizedBox()),
                Radio<Language>(
                  value: Language.Kinyarwanda,
                  groupValue: _selectedLanguage,
                  onChanged: (Language? value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Color.fromRGBO(228, 228, 229, 1),
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'French',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(34, 34, 31, 1)),
                ),
                Expanded(child: SizedBox()),
                Radio<Language>(
                  value: Language.French,
                  groupValue: _selectedLanguage,
                  onChanged: (Language? value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      )
    ]));
  }
}

// class LanguageSelector extends StatefulWidget {
//   @override
//   _LanguageSelectorState createState() => _LanguageSelectorState();
// }

// enum Language { English, Spanish, French }

// class _LanguageSelectorState extends State<LanguageSelector> {
 

//   @override
//   Widget build(BuildContext context) {
//     return Material(

//       child:Container(
//       padding: EdgeInsets.all(16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[

//           Text('English'),
//           SizedBox(width: 20),
//           Radio<Language>(
//             value: Language.Spanish,
//             groupValue: _selectedLanguage,
//             onChanged: (Language? value) {
//               setState(() {
//                 _selectedLanguage = value!;
//               });
//             },
//           ),
//           Text('Spanish'),
//           SizedBox(width: 20),
//           Radio<Language>(
//             value: Language.French,
//             groupValue: _selectedLanguage,
//             onChanged: (Language? value) {
//               setState(() {
//                 _selectedLanguage = value!;
//               });
//             },
//           ),
//           Text('French'),
//         ],
//       ),
//     ));
//   }
// }