import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mediconnect/model/hospital_model.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:mediconnect/screens/splashscreen.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String, dynamic>> _allListItems = [
    {
      "title": "King Faisal",
      "page": SplashScreen(),
      "rating": 4.7,
      "image": Images.hospital1,
      "location": Images.location,
    },
    {
      "title": "Legacy Clinics",
      "page": SplashScreen(),
      "rating": 4.7,
      "image": Images.hospital2,
      "location": Images.location,
    },
    {
      "title": "CHUK",
      "page": SplashScreen(),
      "rating": 4.7,
      "image": Images.hospital3,
      "location": Images.location,
    },
    {
      "title": "NYARUGENGE DH",
      "page": SplashScreen(),
      "rating": 4.7,
      "image": Images.hospital1,
      "location": Images.location,
    },
    {
      "title": "CHUB",
      "page": SplashScreen(),
      "rating": 4.7,
      "image": Images.hospital1,
      "location": Images.location,
    }
  ];

  List<Map<String, dynamic>> _foundItems = [];

  @override
  initState() {
    _foundItems = _allListItems;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];

    if (enteredKeyword.isEmpty) {
      results = _allListItems;
    } else {
      results = _allListItems
          .where((user) => user["title"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                      onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(251, 251, 251, 1),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                          width: 1.0,
                          color: Color.fromRGBO(232, 243, 241, 1),
                              )),
                          hintText: "Search for hospitals",
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(34, 31, 31, 0.4)),
                          suffixIcon: Icon(Icons.search),
                          suffixIconColor: Color.fromRGBO(34, 31, 31, 0.4))),
                  
                  Expanded(

                    child: _foundItems.isNotEmpty
                   ? ListView.builder(
                      itemCount: _foundItems.length,
                      itemBuilder: (context, index) => Card( 
                        key:ValueKey(_foundItems[index]["image"]),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        margin: EdgeInsets.all(10.0),

                        child: GestureDetector( 
                          onTap: (){
                            Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context){
                              return Scaffold( 
                                appBar:AppBar( 
                                  title: Text(
                                    _foundItems[index]['tittle'],
                                    style: TextStyle( 
                                      color:Colors.white
                                    ),
                                    ),
                             backgroundColor:Colors.blue[100],
                                ),
                                body:_foundItems[index]['page']
                              );
                              })  
                            );
                          },
                          child: ListTile(
                            leading: Image.asset(_foundItems[index]['images']),
                            title:Text(_foundItems[index]['names'],
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(34, 31, 31, 1))) ,
                            
                            subtitle:Text(_foundItems[index]['rating'],style: TextStyle(color:Colors.blue[500]),),
                            
                            trailing: Image.asset(_foundItems[index]['location']),
                            ),
                        )
,
                        
                      )
                   )

                   : Text(
                    'No results found',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24.0
                    ),
                   ))])));
                      
                      
                   
  }
}
