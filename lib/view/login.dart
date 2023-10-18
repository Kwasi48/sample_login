import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_login/view/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sample_login/view/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: signwidget(),
    );
  }
}

class signwidget extends StatefulWidget {
  const signwidget({
    super.key,
  });

  @override
  State<signwidget> createState() => _signwidgetState();
}

class _signwidgetState extends State<signwidget> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passControl = TextEditingController();

  Future testData() async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    var data = await db.collection('todo').get();
    var details = data.docs.toList();
    details.forEach((element) {
      print(element.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                    controller: emailControl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.mail),
                        labelText: 'Email *',
                        hintText: "Please enter your mail"),
                    validator: (text) => text!.isEmpty ? 'Email is required' : " ",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: passControl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.key_rounded),
                        labelText: 'Password*',
                        hintText: 'Please enter your password'),
                    validator: (text) => text!.isEmpty ? 'Email is required' : " ",
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'login',
                                    style: GoogleFonts.alike(
                                        textStyle: TextStyle(
                                      fontSize: 16,
                                    )),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('No account? Just '),
                      SizedBox(
                        height: 8,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                            // Scaffold.of(context).showBottomSheet(
                            //     (context) => Text('hello Welcome'));
                            //     (context) => Text('hello Welcome'));
                            // testData();
                          },
                          child: Text('Sign up here'))
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
