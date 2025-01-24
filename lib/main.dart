import 'package:flutter/material.dart';
import 'package:ui/pages/SneakerShop.dart';
import 'package:ui/pages/favorites_page.dart';
import 'package:ui/pages/home_page.dart';
import 'package:ui/pages/nav_bar_handler.dart';
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
          '/favorites_shoe_page': (context) => const FavoritesPage(),
          '/nav_bar_handler': (context) => const NavBarHandler(),
          '/shoe_page': (context) => const Sneakershop(),
        },
        home: const SplashScreen());
  }
}
