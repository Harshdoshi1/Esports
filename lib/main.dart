import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Ensure this file is properly generated
import './screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding for async operations
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Use your Firebase config
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Start with SplashScreen
    );
  }
}
