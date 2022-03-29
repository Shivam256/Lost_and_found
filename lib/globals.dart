import 'package:flutter/material.dart';

const kTextStyle1 = TextStyle(
  fontSize: 30,
  color: Color(0xFF2E3E5C),
  fontWeight: FontWeight.w700,

);


const kTextStyle2 = TextStyle(
  fontSize: 18,
  color: Color(0xFF9FA5C0),
  fontWeight:FontWeight.w500,
);

const kCustomInputDecoration = InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 5.0),
            ),
            hintText: 'Mobile Number',
        ),