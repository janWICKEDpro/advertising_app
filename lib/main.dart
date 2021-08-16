import 'package:advertise/Screens/authentication/login.dart';
import 'package:advertise/Screens/authentication/signIn.dart';
import 'package:advertise/Screens/authentication/switch.dart';
import 'package:advertise/Screens/mainView.dart';
import 'package:advertise/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:advertise/colorConstants.dart';
import 'package:advertise/advertise.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
 Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
  future: _initializeFirebase(),
  builder: (context, snapshot) {
    if (snapshot.hasError) {
      return Text('Error initializing Firebase');
    } else if (snapshot.connectionState ==
        ConnectionState.done) {
      return  MaterialApp(
          debugShowCheckedModeBanner: false,
          color: primaryColor,
          theme: ThemeData(
            focusColor: Colors.white
          ),
          home: Wrapper(),
      
    );
    }
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
       Colors.blue
      ),
    );
  },
);
    
  }
}