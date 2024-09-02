import 'package:flutter/material.dart';
import 'package:practise/pages/login_page.dart';
import 'package:practise/screens/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
