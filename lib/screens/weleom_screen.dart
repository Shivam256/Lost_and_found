import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:lost_and_found/globals.dart';

import 'package:lost_and_found/components/custom_button.dart';
import './signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = "welcome_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/welcome.svg',
            semanticsLabel: 'WELCOME',
            height: 300,
            width: 300,
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Text(
                "Lost&Found",
                style: kTextStyle1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Find something you lost or help someone who lost something",
                textAlign: TextAlign.center,
                style: kTextStyle2,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(buttonText: 'GET STARTED', onClick: (){
            Navigator.pushNamed(context, SignUp.id);
          })
        ],
      ),
    ));
  }
}
