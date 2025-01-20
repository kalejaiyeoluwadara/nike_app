// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/components/shoe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        leading: Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.only(left: 12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: IconButton(
                iconSize: 30,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const CustomIcon(assetName: 'assets/images/menu.svg'),
              ),
            );
          },
        ),
        centerTitle: true,
        title: Stack(
          clipBehavior: Clip.none,
          children: [
            const Positioned(
              left: -30,
              child: CustomIcon(assetName: 'assets/images/highlight.svg'),
            ),
            Text(
              'Explore',
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
              icon: const CustomIcon(assetName: 'assets/images/bag.svg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search bar
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: const Icon(
                            size: 26,
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Looking for Shoes?',
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.raleway(
                            color: const Color.fromARGB(255, 129, 127, 127),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 3),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF0D6EFD),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const CustomIcon(
                          assetName: 'assets/images/sliders.svg'),
                      onPressed: () {},
                      padding: const EdgeInsets.all(12),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Category selector
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Category',
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Categories ListView
            Container(
              height: 50,
              margin: const EdgeInsets.only(left: 30),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isActive = index == activeIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        activeIndex = index; // Update active category
                      });
                    },
                    child: Container(
                      width: 100,
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color:
                            isActive ? const Color(0xFF0D6EFD) : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: isActive ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24, left: 30, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Shoes',
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      color: const Color(0xFF0D6EFD),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20.0, bottom: 20),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ShoeCard(
                      shoeName: 'Nike Jordan',
                      price: '402.00',
                      imageUrl: 'assets/images/shoe5.png',
                      onAddClick: () {},
                    ),
                    ShoeCard(
                      shoeName: 'Nike Air Max',
                      price: '752.00',
                      imageUrl: 'assets/images/shoe.png',
                      onAddClick: () {},
                    ),
                    ShoeCard(
                      shoeName: 'Nike Jordan',
                      price: '302.00',
                      imageUrl: 'assets/images/shoe4.png',
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
                        const SizedBox(width: 100),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 9,
                    child: Image.asset(
                      'assets/images/star.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 10,
                    child: Image.asset(
                      'assets/images/star.png',
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Image.asset(
                      'assets/images/star.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    right: 130,
                    top: 20,
                    child: Image.asset(
                      'assets/images/new.png',
                      fit: BoxFit.contain,
                    ),
                  ),

                  Positioned(
                    right: -10,
                    top: -40,
                    child: Image.asset(
                      'assets/images/shoe4.png',
                      width: 150,
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
    );
  }
}
