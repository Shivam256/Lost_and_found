import 'package:flutter/material.dart';
import 'package:lost_and_found/components/custom_button.dart';
import 'package:lost_and_found/globals.dart';
import 'package:lost_and_found/components/custom_textfield.dart';
import 'package:lost_and_found/screens/main_screen.dart';
import 'package:lost_and_found/utils/API.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const String id = "login_screen";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  API api = API();
  var loginData = {'email': '', 'password': ''};

  void handleLogin() {
    print(loginData);
    // api.postData('auth/login', loginData);
    Navigator.pushNamed(context, MainScreen.id);
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
              placeholer: 'Email or Phone number',
              onChange: (text) {
                setState(() {
                  loginData['email'] = text;
                });
              },
            ),
            SizedBox(height: 20),
            CustomTextField(
              placeholer: 'Password',
              onChange: (text) {
                setState(() {
                  loginData['password'] = text;
                });
              },
            ),
            SizedBox(height: 50),
            CustomButton(
                buttonText: 'LOG IN',
                onClick: () {
                  handleLogin();
                }),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Dont have an account?',
                style: kTextStyle2,
              ),
              TextButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: primaryColor),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ])
          ],
        ),
      ),
    );
  }
}
