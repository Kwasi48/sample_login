import 'package:flutter/material.dart';
import 'package:sample_login/controller/shared/authentication.dart';
import 'package:sample_login/view/home.dart';
import 'package:sample_login/view/login.dart';


class launchScreen extends StatefulWidget {
  const launchScreen({super.key});

  @override
  State<launchScreen> createState() => _launchScreenState();
}

class _launchScreenState extends State<launchScreen> {


  @override
  void initState(){
    super.initState();
    Authentication auth = Authentication();
    auth.getUser().then((user) {
      MaterialPageRoute route;
      if (user != null) {
        route = MaterialPageRoute(builder: (context) => HomeScreen());
      }
      else {
        route = MaterialPageRoute(builder: (context) => SignIn());
      }
      Navigator.pushReplacement(context, route);
    }).catchError((err) => print(err));
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}



