import 'dart:ui';

import 'package:advertise/Screens/authentication/authProps.dart';
import 'package:advertise/authenticationMethods/authentication.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Function? toggle;
  const Login({ Key? key,this.toggle }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var containerWidth = 80.0;
  double containerHeight = 30.0;
  double radiusValue= 9.0;
  bool isLoading = false;
  @override
  void initState(){
    super.initState();

    emailFocus =FocusNode();
    passwordFocus =FocusNode();
    
    emailControllerLogin =TextEditingController();
    passwordControllerLogin =TextEditingController();
  }

  void dispose(){
    emailFocus!.dispose();
    passwordFocus!.dispose();

    emailControllerLogin!.dispose();
    passwordControllerLogin!.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
  var height = MediaQuery.of(context).size.height.toDouble();
 
  
    return Scaffold(
        body: Center(
        
          child: SingleChildScrollView(
            child: Container(
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[
                 Color(0xff207B6E),
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
                      RotatedBox(quarterTurns: 3,  child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("A world ",style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                            Text("of Possibilities awaits",style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                  Form(
                    key: loginKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            controller: emailControllerLogin,
                            focusNode: emailFocus,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            onFieldSubmitted: (_){
                                  FocusScope.of(context).requestFocus(passwordFocus);
                            },
                            validator: (email){
                              RegExp exp = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
        if (email!.trim().isEmpty) return "Please enter email";
        if (exp.hasMatch(email))
          return null;
        else
          return "Enter a valid email";
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'email',
                              labelStyle: TextStyle(color: Colors.white54),
                              prefixIcon: Icon(Icons.email,color: Colors.white54,size: 20,)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20, top: 10),
                          child: TextFormField(
                            validator: (password){
                              if(password!.isEmpty){
                                return "Please enter your password";
                              }
                            },
                            controller: passwordControllerLogin,
                            focusNode: passwordFocus,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,                             
                             decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'password',
                              labelStyle: TextStyle(color: Colors.white54,fontSize: 15),
                              prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.white54,size: 20,),
                            
                            
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(children: [
                            Text('Forgot Password?', style: TextStyle(color: Colors.white54),),
                            SizedBox(height: 40,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(loginKey.currentState!.validate()){
                                  isLoading =!isLoading;
                                  AuthService().signInWithEmailPassword(email: emailControllerLogin!.text, password: passwordControllerLogin!.text);
                                  }
                                });
                              },
                              child: Container(
                                width: containerWidth,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(radiusValue))
                                ),
                                 child: isLoading ? Center(
                                   child: CircularProgressIndicator(
                                     color:  Color(0xff207B6E) ,
                                    
                                     strokeWidth: 2.5,
                                   ),
                                 ) 
                                 :  Row(
                                  mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Ok",style: TextStyle(color: Color(0xff207B6E)),),
                                      Icon(Icons.arrow_forward,color: Color(0xff207B6E),)
                                    ]
                              ),
                              ),
                            )
                          ],),),
                        )
                    ],
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: (){
                                 widget.toggle!();
                            },
                            child: Row(
                              children: [
                                Text("Your First Time ? ",style: TextStyle(color: Colors.white54),),
                                Text("Sign Up",style: TextStyle(color: Colors.white)),
                          
                              ],
                            ),
                          ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
    );
  }
}



                               