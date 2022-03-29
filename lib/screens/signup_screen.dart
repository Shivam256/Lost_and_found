import 'package:flutter/material.dart';
import 'package:lost_and_found/components/custom_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome to Lost&Found'),
        Text('PLease create an account to continue.'),
        TextFormField().
        CustomButton(buttonText: 'SIGN UP', onClick: (){})
      ],
    )
  }
}