import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:advertise/objects/product.dart';
final firebase = FirebaseFirestore.instance;

class DatabaseMethods{

//add a user to the database
static Future<bool> addUser({
  required String username,
  required String email,
  required int contact,
  required String id,
}
)async{
  try{
final docRef= firebase.collection('User').doc(id);
await docRef.set(
  <String, dynamic>{
    "ID":id,
    "NAME": username,
    "EMAIL": email,
    "CONTACT":contact
  }
);
return true;
}catch(e){
  print(e);
  return false;
}

}

// store image to database
static Future<bool> addImage()async{
try{

return true;
}catch(e){
  print(e);
  return false;
}
}


//add a product to db
static Future<bool> addProduct(Product product)async{
try{
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
   return true;
}catch(e){
  print(e);
  return false;
}
    }

  //Get categories stream
  Stream getCategories(category cat) {
    //do something appropriate
   // return firebase.collection('PRODUCT')
  }

  //delete product
  Future deleteProd()async{
    try{
      //todo: get product by id and either delete or set status to deleted

      return true;
    }catch(e){

      return false;
    }
  }

}