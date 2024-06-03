import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map_Page extends StatefulWidget {
  const Map_Page({super.key});

  @override
  State<Map_Page> createState() => _Map_PageState();
}

class _Map_PageState extends State<Map_Page> {
  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: GoogleMap(
      //   initialCameraPosition: CameraPosition(
      //     target: _pGooglePlex, 
      //     zoom: 13),
      // ),
    );
  }
}
