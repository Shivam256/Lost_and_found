import 'package:flutter/material.dart';
import 'package:lost_and_found/globals.dart';

class CustomTextField extends StatelessWidget {
  final String placeholer;
  final Function onChange;

  CustomTextField({required this.placeholer,required this.onChange  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: kCustomInputDecoration.copyWith(hintText: placeholer),
      onChanged: (text) {
        onChange(text);
      },
    );
  }
}
