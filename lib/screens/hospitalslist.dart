import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mediconnect/consts/size.dart';
import 'package:mediconnect/screens/hospitaldetails.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:get/get.dart';
import 'package:mediconnect/model/hospital_model.dart';

class HospitalList extends StatefulWidget {
  const HospitalList({super.key});

  @override
  State<HospitalList> createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  static List<HospitalModel> main_hospitals_list = [
    HospitalModel("King Faisal", Images.hospital1, "800m away", 4.7),
    HospitalModel("Legacy Clinic", Images.hospital2, "800m away", 4.7),
    HospitalModel("CHUK", Images.hospital3, "800m away", 4.7),
    HospitalModel("Nyarugenge DH", Images.hospital4, "800m away", 4.7),
    HospitalModel("CHUB", Images.hospital1, "800m away", 4.7)
  ];
  List<HospitalModel> display_list = List.from(main_hospitals_list);

  void updateList(String value) {
    setState(() {
      display_list = main_hospitals_list
          .where((element) => element.hospital_title!
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.chevron_left,
              size: 30,
            )),
        title: Text(
          'Hospitals',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(34, 31, 31, 1)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Color.fromRGBO(34, 31, 31, 1)),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(251, 251, 251, 1),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(232, 243, 241, 1))),
                  hintText: 'Search for hospitals ...',
                  hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(34, 31, 31, 0.4)),
                  suffixIcon: Icon(Icons.search_rounded),
                  suffixIconColor: Color.fromRGBO(34, 31, 31, 0.4)),
            ),
            SizedBox(
              height: 20.0,
            ),
            if (display_list.length == 0)
              Center(
                child: Text(
                  'No result found',
                  style: TextStyle(
                    color: Color.fromRGBO(64, 124, 226, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            else
              Expanded(
                child: ListView.separated(
                  itemCount: display_list.length,
                  itemBuilder: (context, index) => Container(
                    width: Sizes.screenWidth(),
                    // height: 100.13,
                    alignment: Alignment.centerLeft ,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: Color.fromRGBO(34, 31, 31, 0.1),
                        width: 1.0,
                      ),
                    ),
                    child: ListTile(
                      onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HospitalDetail()));
                        },
                      dense: false,
                      title: Text(
                        display_list[index].hospital_title!,
                        style: TextStyle(
                          color: Color.fromRGBO(34, 31, 31, 1),
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Container(
                        padding: EdgeInsets.only(top:10),
                        child: Row( 
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                            width: 48.97,
                            height: 20.0,
                            color: Color.fromRGBO(64, 124, 226, 0.17),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(64, 124, 226, 1),
                                  size: 15,
                                ),
                                Text(
                                  "${display_list[index].rating}",
                                  style: TextStyle(
                                    color: Color.fromRGBO(64, 124, 226, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(34, 31, 31, 0.4),
                                size: 20,
                              ),
                              Text(
                                display_list[index].location_icon!,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                      leading: Image.asset(display_list[index].hospital_img!),
                    ),
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(
                    color: Colors.white,
                    height: 20,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
