import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/nav_bar_handler');
      },
      child: const Scaffold(
        backgroundColor: Color(0xFF0D6EFD),
        body: Center(
          child: CustomIcon(
            assetName: 'assets/images/logo.svg',
            width: 157,
            height: 130,
          ),
        ),
      ),
    );
  }
}
