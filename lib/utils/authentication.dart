import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  // ignore: body_might_complete_normally_nullable
  // static Future<User?> iniciarSesion({required BuildContext context}) async {
    static Future<UserCredential> iniciarSesion() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);

    // FirebaseAuth authenticator = FirebaseAuth.instance;
    // User? user;

    // GoogleSignIn objGoogleSignIn = GoogleSignIn();
    // GoogleSignInAccount? objGoogleSignInAccount =
    //     await objGoogleSignIn.signIn();

    // if (objGoogleSignInAccount != null) {
    //   GoogleSignInAuthentication objGoogleSignInAuthentication =
    //       await objGoogleSignInAccount.authentication;
    //   AuthCredential credential = GoogleAuthProvider.credential(
    //     accessToken: objGoogleSignInAuthentication.accessToken,
    //     idToken: objGoogleSignInAuthentication.idToken,
    //   );

    //   try {
    //     UserCredential userCredential =
    //         await authenticator.signInWithCredential(credential);

    //     user = userCredential.user;
    //     return user;
    //   } on FirebaseAuthException catch (e) {
    //     // ignore: avoid_print
    //     print('Error $e');
    //   }
    // }
  }

  static Future<void> cerrarSesion({required BuildContext context}) async {
    await FirebaseAuth.instance.signOut();
    GoogleSignIn objGoogleSignIn = GoogleSignIn();
    await objGoogleSignIn.signOut();
  }
}
