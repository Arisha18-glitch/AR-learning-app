import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('🚀 Starting app...');

  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "your-api-key",
        appId: "your-app-id",
        messagingSenderId: "your-sender-id",
        projectId: "your-project-id",
      ),
    );
    print('✅ Firebase initialized successfully!');
  } catch (e) {
    print('❌ Firebase error: $e');
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeuroTick',
      home: HomeScreen(),
    );
  }
}