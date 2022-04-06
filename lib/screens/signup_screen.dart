import 'package:flutter/material.dart';
import 'package:lost_and_found/components/custom_button.dart';
import 'package:lost_and_found/globals.dart';
import 'package:lost_and_found/components/custom_textfield.dart';
import 'package:lost_and_found/screens/login_screen.dart';

import 'package:lost_and_found/utils/API.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String id = "signup_screen";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  API api = API();
  var signupData = {'email': '', 'password': '', 'cpassword': '','name':''};

  void handleSignUp() {
    if (signupData['password'] != signupData['cpassword']) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                  title: const Text('Passwords do not match! '),
                  content: const Text('Please enter both passwords same.'),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OKAY'))
                  ]));
    } else {
      // api.getData('foundItem/624c6dced595f075d6ad7f8b');
      var data = {
        'name':signupData['name'],
        'email': signupData['email'],
        'password': signupData['password']
      };
      api.postData('auth/signup',data);

    }
  }

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
              placeholer: 'Name',
              onChange: (text) {
                setState(() {
                  signupData['name'] = text;
                });
              },
            ),
            SizedBox(height: 20),
            CustomTextField(
              placeholer: 'Email or Phone number',
              onChange: (text) {
                setState(() {
                  signupData['email'] = text;
                });
              },
            ),
            SizedBox(height: 20),
            CustomTextField(
              placeholer: 'Password',
              onChange: (text) {
                setState(() {
                  signupData['password'] = text;
                });
              },
            ),
            SizedBox(height: 20),
            CustomTextField(
              placeholer: 'Confirm password',
              onChange: (text) {
                setState(() {
                  signupData['cpassword'] = text;
                });
              },
            ),
            SizedBox(height: 50),
            CustomButton(
                buttonText: 'SIGN UP',
                onClick: () {
                  handleSignUp();
                }),
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
