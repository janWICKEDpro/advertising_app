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
FocusNode? contactSignUp;

TextEditingController? emailControllerSignUp;
TextEditingController? usernameControllerSignUp;
TextEditingController? passwordControllerSignUp;
TextEditingController? confirmPasswordControllerSignUp;
TextEditingController? contactControllerSignUP;
