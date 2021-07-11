 import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';

class Category{
  IconData? icon;
   String? title;
   Category({this.icon, this.title});
 }



 List<Category> category =[
   Category(icon: Icons.category_outlined, title: "Clothes" ),
   Category(icon: Icons.chair_alt_outlined, title: "Cosmetics" ),
   Category(icon: Icons.format_align_justify_rounded, title: "Tools" ),
   Category(icon: Icons.add_shopping_cart_sharp, title: "Devices" )
 ];
 