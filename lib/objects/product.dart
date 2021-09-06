import 'package:advertise/enums/categories.dart';

class Product{
String? name;
int? price;
String? title;
String? description;
String? link;
int? contact;
DateTime? date;
categories? category;

Product({
    this.title,
    this.category,
    this.contact,
    this.date,
    this.description, 
    this.link,
    this.name, 
    this.price});
}