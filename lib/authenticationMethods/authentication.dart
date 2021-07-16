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



}