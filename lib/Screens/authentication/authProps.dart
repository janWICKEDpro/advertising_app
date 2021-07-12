import 'package:flutter/material.dart';


final loginKey = GlobalKey<FormState>();

FocusNode? emailFocus;
FocusNode? passwordFocus;

TextEditingController? emailControllerLogin;
TextEditingController? passwordControllerLogin;

final signUpKey = GlobalKey<FormState>();

FocusNode? emailFocusSignUp;
FocusNode? userNameFocusSignUp;
FocusNode? passwordFocusSignUp;
FocusNode? confirmPasswordFocusSignUP;

TextEditingController? emailControllerSignUp;
TextEditingController? usernameControllerSignUp;
TextEditingController? passwordControllerSignUp;
TextEditingController? confirmPasswordControllerSignUp;
