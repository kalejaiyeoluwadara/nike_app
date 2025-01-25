// ignore_for_file: dead_code

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';
import 'package:google_fonts/google_fonts.dart';

class Sneakershop extends StatefulWidget {
  const Sneakershop({super.key});

  @override
  State<Sneakershop> createState() => _SneakershopState();
}

class _SneakershopState extends State<Sneakershop> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.only(left: 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left),
          ),
        ),
        title: Stack(
          children: [
            Text(
              'Sneaker Shop',
              style: GoogleFonts.raleway(
                fontSize: 22,
                fontWeight: FontWeight.w600,
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 259,
                        child: Text(
                          'Nike Air Max 270 Essential',
                          style: GoogleFonts.raleway(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Men\'s Shoes ',
                        style: GoogleFonts.raleway(
                          fontSize: 22,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        '\$17.39',
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(clipBehavior: Clip.none, children: [
                      Image.asset(
                        'assets/images/shoe7.png',
                        // height: 250,
                        // width: 200,
                        alignment: Alignment.centerRight,
                      ),
                      Positioned(
                        bottom: -10,
                        width: 300,
                        left: 30,
                        child: Image.asset(
                          'assets/images/slider.png',
                        ),
                      ),
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 70, // Adjust the height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,

                    itemCount: 5, // Adjust the item count as needed
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        height: 70,
                        width: 68,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('assets/images/shoe.png'),
                      );
                    },
                  ),
                )
              ],
            ),
            StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          text: isExpanded
                              ? 'The Nike Air Max 270 Essential is a stylish and comfortable shoe designed for everyday wear. It features a breathable mesh upper, a large Max Air unit in the heel for cushioning, and a durable rubber outsole for traction. '
                              : '${'The Nike Air Max 270 Essential is a stylish and comfortable shoe designed for everyday wear. It features a breathable mesh upper, a large Max Air unit in the heel for cushioning, and a durable rubber outsole for traction. '.substring(0, 100)}...',
                          style: GoogleFonts.raleway(
                            fontSize: 16,
                            color: Colors.grey.shade600,
                          ),
                          children: [
                            TextSpan(
                              text: isExpanded ? ' Show less' : ' Read more',
                              style: GoogleFonts.raleway(
                                fontSize: 16,
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  setState(() {
                                    isExpanded = !isExpanded;
                                  });
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const CustomIcon(
                            height: 35,
                            width: 35,
                            assetName: 'assets/images/heart.svg',
                            color: Colors.black,
                          )),
                    ),
                  ),
                  const SizedBox(width: 40),
                  Container(
                    height: 60,
                    width: 238,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF0D6EFD),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomIcon(
                          assetName: 'assets/images/bag.svg',
                          color: Colors.white,
                          height: 28,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Add To Cart',
                          style: GoogleFonts.raleway(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
