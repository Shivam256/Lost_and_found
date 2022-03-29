import 'package:flutter/material.dart';

import 'package:lost_and_found/globals.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onClick;

  CustomButton({required this.buttonText, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onClick();
        },
        
        child: Text(buttonText, style: TextStyle(color: Colors.white,fontSize: 20)),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFF6C63FF),
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            
          )
        ));
  }
}
