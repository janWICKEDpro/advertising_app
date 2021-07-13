import 'package:advertise/Screens/authentication/login.dart';
import 'package:advertise/Screens/authentication/signIn.dart';
import 'package:advertise/Screens/authentication/switch.dart';
import 'package:advertise/Screens/mainView.dart';
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
        theme: ThemeData(
          focusColor: Colors.white
        ),
        home: MainView(),
    );
  }
}