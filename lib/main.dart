import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(LeisureTrips());
}

class LeisureTrips extends StatelessWidget {
  const LeisureTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
