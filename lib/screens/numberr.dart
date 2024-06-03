import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  var hour = 0;
  var minute = 0;
  var timeFormat = "AM";
  var repeatFormat = "Hourly";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pick Your Time! ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')} $timeFormat, $repeatFormat",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(249, 250, 251, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    'Select time',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 1, 1),
                    ),
                  ),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: NumberPicker(
                                minValue: 0,
                                maxValue: 12,
                                value: hour,
                                zeroPad: true,
                                infiniteLoop: true,
                                onChanged: (value) {
                                  setState(() {
                                    hour = value;
                                  });
                                },
                                textStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                selectedTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Flexible(
                              child: NumberPicker(
                                minValue: 0,
                                maxValue: 59,
                                value: minute,
                                zeroPad: true,
                                infiniteLoop: true,
                                onChanged: (value) {
                                  setState(() {
                                    minute = value;
                                  });
                                },
                                textStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                selectedTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                timeFormat = "AM";
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "AM",
                                style: TextStyle(
                                  color: timeFormat == "AM"
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                timeFormat = "PM";
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "PM",
                                style: TextStyle(
                                  color: timeFormat == "PM"
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                repeatFormat = "Hourly";
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Hourly",
                                style: TextStyle(
                                  color: repeatFormat == "Hourly"
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                repeatFormat = "Daily";
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Daily",
                                style: TextStyle(
                                  color: repeatFormat == "Daily"
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 12
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                repeatFormat = "Weekly";
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Weekly",
                                style: TextStyle(
                                  color: repeatFormat == "Weekly"
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                repeatFormat = "Monthly";
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Monthly",
                                style: TextStyle(
                                  color: repeatFormat == "Monthly"
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
