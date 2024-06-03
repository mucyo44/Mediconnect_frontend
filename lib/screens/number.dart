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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Pick Your Time! ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, "0")} ${timeFormat}",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 250, 251, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      'Select time',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 1, 1)),
                    ),
                    Divider(
                      indent: 20.0,
                      endIndent: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 53,
                              child: Row(
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
                                          color: Colors.grey, fontSize: 12),
                                      selectedTextStyle: const TextStyle(
                                          color: Colors.black, fontSize: 12),
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
                                          color: Colors.grey, fontSize: 12),
                                      selectedTextStyle: const TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  timeFormat = "AM";
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    color: timeFormat == "AM"
                                        ? Colors.grey.shade800
                                        : Colors.grey.shade700,
                                    border: Border.all(
                                      color: timeFormat == "AM"
                                          ? Colors.grey
                                          : Colors.grey.shade700,
                                    )),
                                child: const Text(
                                  "AM",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  timeFormat = "PM";
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: timeFormat == "PM"
                                      ? Colors.grey.shade800
                                      : Colors.grey.shade700,
                                  border: Border.all(
                                    color: timeFormat == "PM"
                                        ? Colors.grey
                                        : Colors.grey.shade700,
                                  ),
                                ),
                                child: const Text(
                                  "PM",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
