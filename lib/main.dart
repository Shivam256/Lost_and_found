import 'package:flutter/material.dart';

import 'package:lost_and_found/screens/weleom_screen.dart';
import 'package:lost_and_found/screens/signup_screen.dart';
import 'package:lost_and_found/screens/login_screen.dart';

void main() {
  runApp(const LostAndFound());
}

class LostAndFound extends StatelessWidget {
  const LostAndFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        SignUp.id:(context) => SignUp(),
        Login.id:(context)=>Login()
      },
    );
  }
}
