import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCYeBJwas8H-u3HW5dvUZGPNJAW1XQvm6w",
            authDomain: "proyectobavarian.firebaseapp.com",
            projectId: "proyectobavarian",
            storageBucket: "proyectobavarian.appspot.com",
            messagingSenderId: "558073952474",
            appId: "1:558073952474:web:ec54291c0d5abe2aa90de3",
            measurementId: "G-VPYKD86WBQ"));
  } else {
    await Firebase.initializeApp();
  }
}
