import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About"),),
      body: Container(
        child: Center(
          child: Card(
            child: Text("This is an app invented by Jan"),
          ),
        ),
      ),
    );
  }
}