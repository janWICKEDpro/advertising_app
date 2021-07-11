import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              
             Color(0xff207B6E),
            // Colors.blueAccent,
             Color(0xff29675B),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("A world of possibilities awaits",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),),
                ],
              ),
              Form(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                            labelText: 'email',
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.email,color: Colors.white,size: 20,)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20, top: 10),
                        child: TextFormField(
                          cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,
                            
                           decoration: InputDecoration(
                            
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                            labelText: 'password',
                            labelStyle: TextStyle(color: Colors.white,fontSize: 15),
                            prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.white,size: 20,),
                            suffixIcon:  Icon(Icons.visibility_off,color: Colors.white,size:20 ) ,
                          // suffix:  InkWell(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Column(children: [
                          Text('Forgot Password?', style: TextStyle(color: Colors.white),),
                          SizedBox(height: 40,),
                          AnimatedContainer(
                            width: 80,
                            
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Ok",style: TextStyle(color: Color(0xff207B6E)),),
                                Icon(Icons.arrow_forward,color: Color(0xff207B6E),)
                              ],
                            ),
                            duration: Duration(milliseconds: 100),),
                        ],),),
                      )
                  ],
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Text("Your First Time ? ",style: TextStyle(color: Colors.white54),),
                          Text("Sign Up",style: TextStyle(color: Colors.white)),
                        ],
                      ),
                  ),
                )
            ],
          ),
        ),
    );
  }
}