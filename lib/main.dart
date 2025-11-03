import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const GameVerseApp());
}

class GameVerseApp extends StatelessWidget {
  const GameVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GameVerse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF00FFEA),
        scaffoldBackgroundColor: const Color(0xFF0F0F1A),
        fontFamily: 'Orbitron',
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Color(0xFF00FFEA), fontSize: 22),
        ),
        cardColor: const Color(0xFF1A1A2E),
      ),
      home: const HomeScreen(),
    );
  }
}
