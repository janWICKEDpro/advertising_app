import 'package:flutter/material.dart';

final addProdKey= GlobalKey<FormState>();

FocusNode? titleFocus;
FocusNode? priceFocus;
FocusNode? descriptionFocus;
FocusNode? categoriesFocus;

TextEditingController? titleController;
TextEditingController? categoriesController;
TextEditingController? priceController;
TextEditingController? descriptionController;