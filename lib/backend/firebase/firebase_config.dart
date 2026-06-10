import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAm0PydIh0f7CWnB0qwU40pHU5zdqvgCEc",
            authDomain: "zapchasti24-test.firebaseapp.com",
            projectId: "zapchasti24-test",
            storageBucket: "zapchasti24-test.firebasestorage.app",
            messagingSenderId: "445911693831",
            appId: "1:445911693831:web:09ec6aff19de9097c6c8a2"));
  } else {
    await Firebase.initializeApp();
  }
}
