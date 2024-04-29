import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts/screens/welcome.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Welcome()
    )
   );
}
