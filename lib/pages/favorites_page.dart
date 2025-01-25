import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/components/fave_shoe_card.dart';
import 'package:ui/components/icon.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> favoriteShoes = [
      {
        'name': 'Nike Air Max',
        'price': '752.00',
        'imageUrl': 'assets/images/shoe5.png'
      },
      {
        'name': 'Nike Jordan',
        'price': '302.00',
        'imageUrl': 'assets/images/shoe4.png'
      },
      {
        'name': 'Nike Jordan',
        'price': '402.00',
        'imageUrl': 'assets/images/shoe.png'
      },
      {
        'name': 'Nike Club Max',
        'price': '402.00',
        'imageUrl': 'assets/images/shoe2.png'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Favorites',
          style: GoogleFonts.raleway(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const CustomIcon(assetName: 'assets/images/heart.svg'),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75, // Adjusted aspect ratio for better fit
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: favoriteShoes.length,
          itemBuilder: (context, index) {
            final shoe = favoriteShoes[index];
            return FaveShoeCard(
              shoeName: shoe['name']!,
              price: shoe['price']!,
              imageUrl: shoe['imageUrl']!,
              onAddClick: () {
                // Handle Add to Cart
              },
            );
          },
        ),
      ),
    );
  }
}
