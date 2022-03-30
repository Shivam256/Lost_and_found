import 'package:flutter/material.dart';
import 'package:lost_and_found/components/custom_button.dart';
import 'package:lost_and_found/globals.dart';
import 'package:lost_and_found/components/custom_textfield.dart';
import 'package:lost_and_found/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String id = "signup_screen";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Lost&Found',
              style: kTextStyle1,
              textAlign: TextAlign.center,
            ),
            Text('Please create an account to continue.',
                style: kTextStyle2, textAlign: TextAlign.center),
            SizedBox(height: 50),
            CustomTextField(
              placeholer: 'Email or Phone number',
            ),
            SizedBox(height: 20),
            CustomTextField(
              placeholer: 'Password',
            ),
            SizedBox(height: 20),
            CustomTextField(
              placeholer: 'Confirm password',
            ),
            SizedBox(height: 50),
            CustomButton(buttonText: 'SIGN UP', onClick: () {}),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Already have an account?',
                style: kTextStyle2,
              ),
              TextButton(
                  child: Text(
                    'Log in',
                    style: TextStyle(color: primaryColor),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Login.id);
                  })
            ])
          ],
        ),
      ),
    );
  }
}
