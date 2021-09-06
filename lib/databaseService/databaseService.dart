import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:advertise/objects/product.dart';
final firebase = FirebaseFirestore.instance;

class DatabaseMethods{

//add a user to the database
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
    "ID":id,
    "NAME": username,
    "EMAIL": email,
    "CONTACT":contact
  }
);

}

// store image to database

//add a product to db
static Future addProduct(Product product)async{
//todo be implemented
final productRef= await firebase.collection('PRODUCT').doc(product.title).set(
   <String,dynamic>{
     'Category': product.category,
     'Contact':product.contact,
     'Date':DateTime.now(),
     'Description':product.description,
     'Image': product.link,
     'Name':product.name,
     'Price': product.price,
     'Title':product.title

         }
      );
    }
}