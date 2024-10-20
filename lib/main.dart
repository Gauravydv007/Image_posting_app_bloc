import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app_bloc_001/features/presentation/pages/Login_page.dart';
import 'package:social_media_app_bloc_001/firebase_options.dart';
import 'package:social_media_app_bloc_001/themes/light_theme.dart';


void main() async {
  // here firebase is setup
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      home: LoginPage(),
    
      
    );
  }
}