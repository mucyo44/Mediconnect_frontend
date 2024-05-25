import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mediconnect/consts/colors_util.dart';
import 'package:mediconnect/consts/date_utils.dart' as date_util;

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> todos = <String>[];
  TextEditingController controller = TextEditingController();
  bool _isWeekend = false;
  bool _timeSelected = false;
  int? _currentIndex;
  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    super.initState();
  }



  Widget titleView() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Text(
        date_util.DateUtils.months[currentDateTime.month - 1] +
            ' ' +
            currentDateTime.year.toString(),
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  Widget hrizontalCapsuleListView() {
    return Container(
      width: width,
      height: 86,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: currentMonthList.length,
        itemBuilder: (BuildContext context, int index) {
          return capsuleView(index);
        },
      ),
    );
  }

  Widget capsuleView(int index) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentDateTime = currentMonthList[index];
            });
          },
          child: Container(
            width: 46,
            // height: 65,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: (currentMonthList[index].day != currentDateTime.day)
                        ? [
                            Colors.white.withOpacity(1),
                            Colors.white.withOpacity(1),
                            Colors.white.withOpacity(1)
                          ]
                        : [
                            Color.fromRGBO(64, 124, 226, 1),
                            Color.fromRGBO(64, 124, 226, 1),
                            Color.fromRGBO(64, 124, 226, 1)
                          ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                    stops: const [0.0, 0.5, 1.0],
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Color.fromRGBO(34, 31, 31, 0.1), width: 2)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    date_util.DateUtils
                        .weekdays[currentMonthList[index].weekday - 1],
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color:
                            (currentMonthList[index].day != currentDateTime.day)
                                ? Color.fromRGBO(34, 31, 31, 0.6)
                                : Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    currentMonthList[index].day.toString(),
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color:
                            (currentMonthList[index].day != currentDateTime.day)
                                ? Color.fromRGBO(34, 31, 31, 1)
                                : Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget topView() {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            hrizontalCapsuleListView(),
            
          ]),
    );
  }

  Widget gridView() {
    return _isWeekend
        ? Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Text(
                'Weekend is not available, please select another date',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(64, 124, 226, 1),
                ),
              ),
            ),
          )
        : CustomScrollView(
            shrinkWrap: true,
            slivers: <Widget>[
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: _currentIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: _currentIndex == index
                              ? Color.fromRGBO(64, 124, 226, 1)
                              : Colors.transparent,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '${index + 9}:00 ${index + 9 > 11 ? "PM" : "AM"}',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: _currentIndex == index
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: 9,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.5,
                
                ),
              ),
            ],
          );
  }


  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    // height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        topView(),
        SizedBox(height: 10,),
        Container(
          width: 303,
          height: 214,
          child: Column( 
            children: [ 
            Divider(
            height: 1.26,
            color: Color.fromRGBO(64, 124, 226, 0.13),),
            SizedBox(height: 10,),
             gridView()
            ],
          ),
        )

            
       
        ],
    );
  }
}
