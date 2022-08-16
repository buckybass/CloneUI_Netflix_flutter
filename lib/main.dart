import 'package:flutter/material.dart';
import 'package:test_caurosal/screens/homepage.dart';
import 'package:test_caurosal/screens/navscreen.dart';
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          bottomNavigationBarTheme:
              const BottomNavigationBarThemeData(selectedItemColor: Colors.white)),
      home: const NavScreen(),
    );
  }
}
