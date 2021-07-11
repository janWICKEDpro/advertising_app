import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          children: [
            Text("Enable green theme"),
           
          ],
        ),
        Divider(),
        Row(
          children: [
            Text("Enable dark theme"),
            
          ],
        )
      ],
      ),
    );
  }
}