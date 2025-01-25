import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home page after 2 minutes (120 seconds)
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/nav_bar_handler');
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Allow navigation on user tap
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
