import 'package:advertise/Screens/authentication/login.dart';
import 'package:advertise/Screens/mainView.dart';
import 'package:advertise/authenticationMethods/authentication.dart';
import "package:flutter/material.dart";

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(builder:(context, snapshot){
      if(snapshot.hasData){
        return MainView();
      }else {
        return Login();
      }
    } ,
    stream:AuthService().authState ,
    );
  }
}