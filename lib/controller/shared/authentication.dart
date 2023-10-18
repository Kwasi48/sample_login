import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';


class Authentication{

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> login(String email, String password) async {
    UserCredential authCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    User? user = authCredential.user;
    return user!.uid;
  }
}