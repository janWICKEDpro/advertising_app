import 'package:cloud_firestore/cloud_firestore.dart';
final firebase = FirebaseFirestore.instance;

class DatabaseMethods{

//add user to database
static Future addUser({
  required String username,
  required String email,
  required int contact,
  required String id,
}
)async{
final docRef= firebase.collection('User').doc(id);
await docRef.set(
  <String, dynamic>{

  }
);

}

// store image to database
static Future addProduct()async{

  }
}