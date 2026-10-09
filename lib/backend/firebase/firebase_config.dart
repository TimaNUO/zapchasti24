import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyANPxbuH5fkVceXYU_b8gJ7VKQPSkEBk6c",
            authDomain: "zapchasti24-ace3au.firebaseapp.com",
            projectId: "zapchasti24-ace3au",
            storageBucket: "zapchasti24-ace3au.firebasestorage.app",
            messagingSenderId: "535464709451",
            appId: "1:535464709451:web:b1788e90bb8d0c0a39acce"));
  } else {
    await Firebase.initializeApp();
  }
}
