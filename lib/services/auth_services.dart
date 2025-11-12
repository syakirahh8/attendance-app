import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthServices() {
    if (!kIsWeb) { //only for Android/IOS
      FirebaseAuth.instance.setSettings(
        appVerificationDisabledForTesting: true,
        forceRecaptchaFlow: false,
      );
    }
  }

  // get current user
  User? get currentUser => _auth.currentUser;

  //auth state changes stream = ketika kill aplikasi dia ga perlu login lagi
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // sign in with email and password = menggunakan proses asyncronous
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password
      );
    } catch (e) {
      rethrow;
    }
  }
}