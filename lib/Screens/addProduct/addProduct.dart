import 'package:advertise/Screens/addProduct/addImage.dart';
import 'package:advertise/colorConstants.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Text("Add a Product",style: TextStyle(fontSize: 30)),
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const  EdgeInsets.only(top:10.0,left: 10.0,right: 10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Title",
                           border: OutlineInputBorder()
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 10.0,right: 10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: "Price",
                        border: OutlineInputBorder()
                        ),
                      ),
                    ),
                   
                    Container(
                       
                      child: Padding(
                        padding: const  EdgeInsets.only(top:10.0,left: 10.0,right: 10.0),
                        child: TextField(
                          maxLines: 10,
                          decoration: InputDecoration(
                            labelText: "Description ...",
                            border: OutlineInputBorder()
                            ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:8.0,top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                        ElevatedButton(
                          child: Container(
                            child: Text("Next"),
                          ) , 
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ImageSelector()));
                          },
                      ),
                  ],
                ),
              )
            ],
          ),
        ) ,
      ),
    );
  }
}