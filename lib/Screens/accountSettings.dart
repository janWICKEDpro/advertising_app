import 'package:advertise/colorConstants.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account '),
        backgroundColor: primaryColor,
        elevation: 8,
      ),
      body: Container(
        child: Column(children: [
          ListTile(
            leading: Icon(Icons.account_circle, color: primaryColor,),
            title: Text("Gift"),
          ),
          Divider(color: primaryColor,),
           ListTile(
            leading: Icon(Icons.email,color: primaryColor,),
            title: Text("janroyal45@gmail.com"),
          ),
          
        ],
      ),
      ),
    );
  }
}