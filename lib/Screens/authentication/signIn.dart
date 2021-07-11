import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
  @override
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
                      RotatedBox(quarterTurns: 3,  child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("We Can Start ",style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                            Text("Something New",style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'username',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.account_circle,color: Colors.white,size: 20,)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5),
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
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'password',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.lock_outlined,color: Colors.white,size: 20,)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20, top: 5),
                          child: TextFormField(
                            cursorColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,
                              
                             decoration: InputDecoration(
                              
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'confirm password',
                              labelStyle: TextStyle(color: Colors.white,fontSize: 15),
                              prefixIcon: Icon(Icons.lock_open,color: Colors.white,size: 20,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(children: [
                           
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: [
                              Text("Already have an Account? ",style: TextStyle(color: Colors.white54),),
                              Text(" Sign In",style: TextStyle(color: Colors.white)),
                            ],
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