import 'package:advertise/Screens/authentication/authProps.dart';
import 'package:advertise/authenticationMethods/authentication.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
 final Function? toggle;
  const SignUp({ Key? key,this.toggle }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
  bool isLoading =false;
  var containerWidth = 80.0;
  var radiusValue =9.0;
  @override
  void initState(){
    super.initState();
    emailFocusSignUp =FocusNode();
    userNameFocusSignUp =FocusNode();
    passwordFocusSignUp =FocusNode();
    confirmPasswordFocusSignUP= FocusNode();

    emailControllerSignUp =TextEditingController();
    usernameControllerSignUp = TextEditingController();
    passwordControllerSignUp =TextEditingController();
    confirmPasswordControllerSignUp =TextEditingController();
  }

  void dispose(){
    emailControllerSignUp!.dispose();
    usernameControllerSignUp!.dispose();
    passwordControllerSignUp!.dispose();
    confirmPasswordControllerSignUp!.dispose();

    emailFocusSignUp!.dispose();
    userNameFocusSignUp!.dispose();
    passwordFocusSignUp!.dispose();
    confirmPasswordFocusSignUP!.dispose();
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
                      RotatedBox(quarterTurns: 3,  child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 35, fontWeight: FontWeight.bold),)),
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
                    key: signUpKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            onFieldSubmitted: (_){
                              FocusScope.of(context).requestFocus(contactSignUp);
                            },
                            validator: (name){
                                if(name!.length<3){
                                  return 'Enter a username longer than 3 characters';
                                }else if(name.isEmpty){
                                  return 'Enter a username';
                                }
                            },
                            focusNode: userNameFocusSignUp,
                            controller: usernameControllerSignUp,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'username',
                              labelStyle: TextStyle(color: Colors.white54),
                              prefixIcon: Icon(Icons.account_circle,color: Colors.white54,size: 20,)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.white,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            onFieldSubmitted: (_){
                              FocusScope.of(context).requestFocus(emailFocusSignUp);
                            },
                            
                            validator: (contact){
                                if(contact!.isEmpty){
                                  return 'enter your whatsapp number';
                                }else if(contact.length>9 || contact.length<9){
                                  return 'phone number should be 9 digits';
                                }
                            },
                            focusNode: contactSignUp,
                            controller: contactControllerSignUP,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'WhatsApp contact',
                              labelStyle: TextStyle(color: Colors.white54),
                              prefixIcon: Icon(Icons.account_circle,color: Colors.white54,size: 20,)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.white,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            focusNode: emailFocusSignUp,
                            controller: emailControllerSignUp,
                            onFieldSubmitted: (_){
                              FocusScope.of(context).requestFocus(passwordFocusSignUp);
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
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            controller: passwordControllerSignUp,
                            focusNode: passwordFocusSignUp,
                            onFieldSubmitted: (_){
                              FocusScope.of(context).requestFocus(confirmPasswordFocusSignUP);
                            },
                            validator: (password){
                                if(password!.isEmpty){
                                    return "Enter a password";
                                }else if(password.length<8){
                                  return "This field should be atleast 8 characters";
                                }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'password',
                              labelStyle: TextStyle(color: Colors.white54),
                              prefixIcon: Icon(Icons.lock_outlined,color: Colors.white54,size: 20,)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20, top: 5),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              focusNode: confirmPasswordFocusSignUP,
                              controller: confirmPasswordControllerSignUp,
                              validator: (confirmPass){
                                if(confirmPass!.isEmpty){
                                  return "Confirm you password";
                                }else if(confirmPass!=passwordControllerSignUp.toString()){
                                  return "Passwords don't match";
                                }
                              },
                             decoration: InputDecoration(
                              
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                              labelText: 'confirm password',
                              labelStyle: TextStyle(color: Colors.white54,fontSize: 15),
                              prefixIcon: Icon(Icons.lock_open,color: Colors.white54,size: 20,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(children: [
                           //create account with email n password
                            SizedBox(height: 40,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(signUpKey.currentState!.validate()){
                                    isLoading =!isLoading;
                                    AuthService().createAccount(name:usernameControllerSignUp!.text , email: emailControllerSignUp!.text, password: passwordControllerSignUp!.text,contact: contactControllerSignUP.),
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
                                Text("Already have an Account? ",style: TextStyle(color: Colors.white54),),
                                Text(" Sign In",style: TextStyle(color: Colors.white)),
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