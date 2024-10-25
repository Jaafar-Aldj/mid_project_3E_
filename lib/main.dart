import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'models/mysql.dart';

void main() async {
  await sql();
  runApp(const LeisureTrips());
}

class LeisureTrips extends StatelessWidget {
  const LeisureTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
