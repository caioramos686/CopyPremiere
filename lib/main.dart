import 'package:flutter/material.dart';
import 'package:premiere_copy/view/dashboard.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Premiere());
}

class Premiere extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType){
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
    },
    );
  }
}
