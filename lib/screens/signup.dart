import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'Welcome to FitMax',
                  style: GoogleFonts.alike(
                      textStyle: const TextStyle(
                    fontSize: 24,
                  )),
                ),
              ),
              const Image(
                  image: AssetImage(
                'assets/rive.png',
              )),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.account_circle),
                        labelText: 'Name *',
                        hintText: 'Please enter your name'),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.key_rounded),
                        labelText: 'Password*',
                        hintText: 'Please enter your password'),
                  ),
                  SizedBox(height: 36,),
                  ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'login',
                              style: GoogleFonts.alike(
                                  textStyle: TextStyle(fontSize: 16,)),
                            ),
                          )
                        ],
                      )),
                  SizedBox(height: 36,),
                   Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('No account? Just '),
                      SizedBox(height: 8,),
                      TextButton(onPressed: (){}, child: Text('Sign up here'))
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
