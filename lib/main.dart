import 'package:flutter/material.dart';
import 'package:panda_plan/views/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "GloriaHallelujah",
        fontFamilyFallback: const [
          "sans-serif",
        ],
        scaffoldBackgroundColor: const Color(0xFF62c940),
      ),
      home: const LoginScreen(),
    );
  }
}
