import 'package:flutter/material.dart';


class AddProduct extends StatefulWidget {
  const AddProduct({ Key? key }) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:25.0),
              child: Text("Add a Product",style: TextStyle(fontSize: 30)),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(),
                  TextFormField(),
                  
                  
                ],
              ),
            )
          ],
        ) ,
      ),
    );
  }
}