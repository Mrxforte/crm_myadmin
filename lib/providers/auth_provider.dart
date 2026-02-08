import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  // email sign up firebase  and add user records
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      await firestore.collection("users").doc(auth.currentUser!.uid).set({
        "email": email,
        "password": password,
      });
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
