import 'package:flutter/material.dart';
import 'package:ui/components/fave_shoe_card.dart';
import 'package:ui/components/icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/components/shoe_card.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FaveShoeCard(
                    shoeName: 'Nike Air Max',
                    price: '752.00',
                    imageUrl: 'assets/images/shoe5.png',
                    onAddClick: () {},
                  ),
                  FaveShoeCard(
                    shoeName: 'Nike Jordan',
                    price: '302.00',
                    imageUrl: 'assets/images/shoe4.png',
                    onAddClick: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FaveShoeCard(
                    shoeName: 'Nike Jordan',
                    price: '402.00',
                    imageUrl: 'assets/images/shoe.png',
                    onAddClick: () {},
                  ),
                  FaveShoeCard(
                    shoeName: 'Nike Club Max',
                    price: '402.00',
                    imageUrl: 'assets/images/shoe2.png',
                    onAddClick: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
