import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mediconnect/consts/app_navigation.dart';
import 'package:mediconnect/screens/images.dart';
import 'package:mediconnect/screens/text.dart';
import 'package:mediconnect/widgets/curveclippath.dart';
import 'package:mediconnect/consts/size.dart';
import 'package:mediconnect/widgets/search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          ClipPath(
            clipper: CurvedEdges(),
            child: Container(
                color: Colors.blue.withOpacity(0.2),
                padding: EdgeInsets.all(0.0),
                width: double.infinity,
                child: SizedBox(
                  width: 430.0, // Adjust width as needed
                  height: 300.0, // Adjust height as needed
                  child: Stack(
                    children: [ChatBot(), User()],
                  ),
                )),
          ),
          SearchBars(),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      width: 60.0,
                      height: 57.0,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(64, 124, 226, 1)),
                      child: SvgPicture.asset(Images.doctor),
                    ),
                    Text(
                      'Hospitals',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 30.0),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      width: 60.0,
                      height: 57.0,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(64, 124, 226, 1)),
                      child: SvgPicture.asset(Images.pharmacy),
                    ),
                    Text(
                      'Medication',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 30.0),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      width: 60.0,
                      height: 57.0,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(64, 124, 226, 1)),
                      child: SvgPicture.asset(Images.ambulance),
                    ),
                    Text(
                      'Ambulance',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          ContainerSlider()
        ],
      )),
    );
  }
}

class ChatBot extends StatelessWidget {
  const ChatBot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: 24.0,
      child: SizedBox(
        child: Image(image: AssetImage("assets/images/Bot.png")),
      ),
    );
  }
}

class User extends StatelessWidget {
  const User({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image(image: AssetImage("assets/images/Ellipse 78.png")),
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            Text('Welcome !',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(34, 31, 31, 1))),
            Text('Peace',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(34, 31, 31, 1))),
            Text('How is it going today ?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(34, 31, 31, 0.5),
                  height: 1.5,
                )),
          ],
        ));
  }
}

class ContainerSlider extends StatefulWidget {
  const ContainerSlider({super.key});

  @override
  State<ContainerSlider> createState() => _ContainerSliderState();
}

class _ContainerSliderState extends State<ContainerSlider> {
  final myitems = [
    Containers(
        image: Images.dosport, text: Texts.title1, subtitle: Texts.subtitle1),
    Containers(
        image: Images.stayhydrated,
        text: Texts.title2,
        subtitle: Texts.subtitle2),
    Containers(
        image: Images.staysober, text: Texts.title3, subtitle: Texts.subtitle3),
    Containers(
        image: Images.healthfood,
        text: Texts.title4,
        subtitle: Texts.subtitle4),
  ];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
               
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(microseconds: 800),
                autoPlayInterval: const Duration(seconds: 60),
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: ((index, reason) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                })),
            items: myitems),
            AnimatedSmoothIndicator(activeIndex: myCurrentIndex,
             count: myitems.length,
             effect: WormEffect( 
              dotHeight: 5,
              dotWidth: 5,
              spacing: 5,
              dotColor: Colors.black,
              activeDotColor: Colors.blue
             ),)
      ])
    ]);
  }
}

class Containers extends StatelessWidget {
  const Containers(
      {super.key,
      required this.image,
      required this.text,
      required this.subtitle});
  final String image, text, subtitle;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
      child: Container(
       margin:EdgeInsets.only(bottom: 10),
        width: Sizes.getScreenWidth(context),
        height: 50.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3))
            ]),
        child:
            Column(children: [Image.asset(image), 
            Text(text,
            style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color:Color.fromRGBO(67, 73, 88, 1)
                  

                )), 
                SizedBox(height: 5.0,),
            Text(subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color:Colors.black
                  

                ))]),
      ),
    ));
  }
}
