import 'package:advertise/databaseService/databaseService.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth auth= FirebaseAuth.instance;


  //create Account with email and password
  Future<bool>  createAccount({
    required String name,
    required String email,
    required String password,
    required int contact,
  }) async{
    try {
      final user = await auth.createUserWithEmailAndPassword(email: email, password: password);

      //add user to db;
      DatabaseMethods.addUser(username:name, email: email,contact:contact , id: user.user!.uid );
      return true;
    }catch(e){
      return false;
    }

  }

  //sign in with email and password
  Future signInWithEmailPassword({
    required String email, 
    required String password
    })async{
      try{
        final result = await auth.signInWithEmailAndPassword(email: email, password: password);
        User? user = result.user;
        return user;
      }catch(e){
          print(e);
      }
  }
  

Stream  get authState {
  
  return auth.authStateChanges();
}

 Future<bool> logout()async{
  try{
   await auth.signOut();
   return true;
  }catch(e){
   print(e) ;
   return false;
  }
 }

}
