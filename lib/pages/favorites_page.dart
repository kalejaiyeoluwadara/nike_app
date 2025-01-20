// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui/components/bottom_nav.dart';
import 'package:ui/components/fave_shoe_card.dart';
import 'package:ui/components/icon.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  // List of categories
  final List<String> categories = ['All', 'Outdoor', 'Tennis', 'Running'];
  int activeIndex = 0; // Active category index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Categories ListView
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20.0, bottom: 20),
              child: SizedBox(
                height: 220,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    FaveShoeCard(
                      shoeName: 'Nike Jordan',
                      price: '402.00',
                      imageUrl: 'assets/images/shoe5.png',
                      onAddClick: () {},
                    ),
                    FaveShoeCard(
                      shoeName: 'Nike Air Max',
                      price: '752.00',
                      imageUrl: 'assets/images/shoe.png',
                      onAddClick: () {},
                    ),
                    FaveShoeCard(
                      shoeName: 'Nike Jordan',
                      price: '302.00',
                      imageUrl: 'assets/images/shoe4.png',
                      onAddClick: () {},
                    ),
                    FaveShoeCard(
                      shoeName: 'Nike React',
                      price: '550.00',
                      imageUrl: 'assets/images/shoe2.png',
                      onAddClick: () {},
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // White container
                  Container(
                    height: 120, // Fixed height
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Summer Sale',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.raleway(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              '15% OFF',
                              style: GoogleFonts.poppins(
                                color: const Color.fromRGBO(103, 77, 197, 1),
                                fontSize: 36,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        // Empty space to position the shoe in the stack
                        const SizedBox(width: 100),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 10, // Adjust position as needed
                    bottom: 9, // Allow it to overflow upwards
                    child: Image.asset(
                      'assets/images/star.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    left: 160, // Adjust position as needed
                    top: 10, // Allow it to overflow upwards
                    child: Image.asset(
                      'assets/images/star.png',
                    ),
                  ),
                  Positioned(
                    right: 10, // Adjust position as needed
                    bottom: 10, // Allow it to overflow upwards
                    child: Image.asset(
                      'assets/images/star.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    right: 130, // Adjust position as needed
                    top: 20, // Allow it to overflow upwards
                    child: Image.asset(
                      'assets/images/new.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  // Shoe image overflowing
                  Positioned(
                    right: -10, // Adjust position as needed
                    top: -40, // Allow it to overflow upwards
                    child: Image.asset(
                      'assets/images/shoe4.png',
                      width: 150, // Adjust image size
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
