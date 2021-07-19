import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelector extends StatefulWidget {
  const ImageSelector({ Key? key }) : super(key: key);

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
                child: Container(
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
                     ), onPressed: (){ },
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