import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/components/icon.dart';

class SearchBarP extends StatelessWidget {
  const SearchBarP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
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
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
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
              icon: const CustomIcon(assetName: 'assets/images/sliders.svg'),
              onPressed: () {},
              padding: const EdgeInsets.all(12),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
