import 'package:advertise/databaseService/databaseService.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:advertise/objects/product.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ImageSelector extends StatefulWidget {
  // may have to change
  final String? title;
  final String? description;
  final dynamic category;
  final int? price;
  const ImageSelector({ Key? key, this.category, this.description, this.title, this.price }) : super(key: key);

  @override
  _ImageSelectorState createState() => _ImageSelectorState();
}

class _ImageSelectorState extends State<ImageSelector> {
  XFile? _image;
  getImageFromGallery()async{
    ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(
      source: ImageSource.gallery, imageQuality: 100);

      setState(() {
        _image = image;
      });
  }

  @override
  void dispose(){
  
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Text("Add the image of the product",style: TextStyle(fontSize: 20)),
              ),
              GestureDetector(
                onTap: (){
                  getImageFromGallery();
                },
                child: 
                _image==null? Image.asset(
                  _image!.path
                ) :
                Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                           ),
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[800],
                        ),
                      ),
              ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    ElevatedButton(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.keyboard_arrow_left_outlined),
                        Text("go back"),
                      ],
                    ), onPressed: (){
                      Navigator.of(context).pop();
                    },),
                    ElevatedButton(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("See Preview"),
                        Icon(Icons.keyboard_arrow_right_outlined),
                       ],
                     ), onPressed: (){
                      
                     Product product = Product(title:widget.title, price:widget.price,description: widget.description); 
                      DatabaseMethods.addProduct(product);
                      //preview will be implemented later
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PreviewAdvert()));
                      },
                    )
                  ],
               ),
            )
          ],
        ),
      ),
    );
  }
}