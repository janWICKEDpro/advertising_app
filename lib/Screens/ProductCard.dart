import 'package:advertise/colorConstants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
 final String? title;
 final String? price;
 final DateTime? date;
  const ProductCard({ Key? key, this.price,this.date,this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3.5)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child:Container(
              // height: 150,
                child: Image.asset('assets/images/pic1.jpeg'),
              ),
            ),
          //  Divider(color: Colors.black,),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Name:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(" ${this.title}"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,left: 8.0),
                 child: Row(
                    children: [
                      Text("Price:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(" ${this.price}"),
                    ],
                ),
                )
              ],
              )
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("${this.date}",style: TextStyle(color: secondaryColor,fontSize: 12),))
          
        ],)
      ),
    );
  }
}