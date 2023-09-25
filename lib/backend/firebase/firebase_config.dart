import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAFd4fmUYu7dJSsjj0Z1lOp9EMuMoUdKYI",
            authDomain: "jumpstart-app-a00f1.firebaseapp.com",
            projectId: "jumpstart-app-a00f1",
            storageBucket: "jumpstart-app-a00f1.appspot.com",
            messagingSenderId: "851385510034",
            appId: "1:851385510034:web:7123e1519dd05414a81e4b",
            measurementId: "G-LG6ZJ3Z1KC"));
  } else {
    await Firebase.initializeApp();
  }
}
