import 'package:flutter/material.dart';
import 'package:advertise/Screens/mainView.dart';


class Advertise extends StatefulWidget {
  const Advertise({ Key? key }) : super(key: key);

  @override
  _AdvertiseState createState() => _AdvertiseState();
}

class _AdvertiseState extends State<Advertise> {
  @override
  Widget build(BuildContext context) {
    return MainView();
  }
}