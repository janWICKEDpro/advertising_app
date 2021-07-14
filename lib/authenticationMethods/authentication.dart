import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth auth= FirebaseAuth.instance;

  //sign in with email and password
  Future signInWithEmailPassword(String email, String password)async{
      try{
        final result = await auth.signInWithEmailAndPassword(email: email, password: password);
        User? user = result.user;
        return user;
      }catch(e){
          print(e);
      }
  }


  //register with email and password
  Future registerEmailandPassword() async{
    try{
     // final user = await auth.R
    }catch(e){
      print(3);
      return null;
    }
  }

  //sign out 

}