import 'package:advertise/Screens/ProductCard.dart';
import 'package:advertise/colorConstants.dart';
import 'package:advertise/objects/pictureObject.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  final String? title;
  const Products({ Key? key, this.title }) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.title}"),
      backgroundColor: primaryColor,
      ),
      body: Container(

        child: ListView.builder(
            itemBuilder: (context , index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProductCard(title: pictures[index].title,price: pictures[index].price, date: pictures[index].date),
              );
            } , 
            itemCount: pictures.length
          ),
      ),
    );
  }
}