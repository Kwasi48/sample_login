import 'package:flutter/material.dart';
import 'package:sample_login/view/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Nothing to See yet'),
            SizedBox(height: 36,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Text(('Move Back')))
          ],
        ),
      )),
    );
  }
}
