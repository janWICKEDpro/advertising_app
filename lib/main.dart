import 'package:advertise/Screens/authentication/login.dart';
import 'package:flutter/material.dart';

import 'package:advertise/colorConstants.dart';
import 'package:advertise/advertise.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: primaryColor,
        home: Login(),
    );
  }
}