import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.abc,
          color: Colors.transparent,
        ),
        centerTitle: true,
        title: Stack(
          clipBehavior: Clip.none,
          children: [
            Text(
              'Favorite',
              style: GoogleFonts.raleway(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: const CustomIcon(assetName: 'assets/images/heart.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
