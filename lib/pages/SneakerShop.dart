import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';
import 'package:google_fonts/google_fonts.dart';

class Sneakershop extends StatelessWidget {
  const Sneakershop({super.key});

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
            onPressed: () {},
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
                        left: 40,
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
