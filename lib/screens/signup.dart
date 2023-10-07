import 'package:flutter/material.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(16),
            child: Text('Welcome to FitMax'),),
          ],
        ),
      ),
    );
  }
}
