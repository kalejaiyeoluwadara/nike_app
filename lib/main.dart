import 'package:flutter/material.dart';
import 'package:ui/pages/home_page.dart';
import 'package:ui/pages/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/home_page': (context) => const HomePage(),
        },
        home: const SplashScreen());
  }
}
