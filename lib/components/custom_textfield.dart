import 'package:flutter/material.dart';
import 'package:lost_and_found/globals.dart';

class CustomTextField extends StatelessWidget {
  final String placeholer;

  CustomTextField({required this.placeholer});

  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: kCustomInputDecoration.copyWith(hintText: placeholer));
  }
}