import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:searchview/screen/homeScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
      },
    ),
  );
}
