import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBvCcLMYfjvhek-Q0BpwqNRfNZtBfZXaKE",
            authDomain: "esp-32-ra-fl.firebaseapp.com",
            projectId: "esp-32-ra-fl",
            storageBucket: "esp-32-ra-fl.appspot.com",
            messagingSenderId: "666515124031",
            appId: "1:666515124031:web:4052acf4e6711b8452ed8a",
            measurementId: "G-7TJKR63KXQ"));
  } else {
    await Firebase.initializeApp();
  }
}
