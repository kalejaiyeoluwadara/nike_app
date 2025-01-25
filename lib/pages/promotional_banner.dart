import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromotionalBanner extends StatelessWidget {
  const PromotionalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // White container
          Container(
            height: 120, // Fixed height
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
    );
  }
}
