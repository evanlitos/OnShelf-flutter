import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD_mwH8JH9VaoBIBK3x--jJqCoOEgMy6GY",
            authDomain: "on-shelf-kx3bv5.firebaseapp.com",
            projectId: "on-shelf-kx3bv5",
            storageBucket: "on-shelf-kx3bv5.firebasestorage.app",
            messagingSenderId: "958923618388",
            appId: "1:958923618388:web:af622ea251a6545cb715c1"));
  } else {
    await Firebase.initializeApp();
  }
}
