import 'package:advertise/Screens/authentication/login.dart';
import 'package:advertise/Screens/authentication/signIn.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  const Authenticate({ Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool islogin= false;
  void toggle (){
    print('hi');
    setState(() {
      islogin = !islogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    return islogin? Login(toggle: toggle) : SignUp(toggle: toggle);
  }
}