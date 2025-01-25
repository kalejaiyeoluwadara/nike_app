import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaveShoeCard extends StatelessWidget {
  final String shoeName;
  final String price;
  final String imageUrl;
  final VoidCallback onAddClick;

  const FaveShoeCard({
    super.key,
    required this.shoeName,
    required this.price,
    required this.imageUrl,
    required this.onAddClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              height: 120, // Fixed height for the image
              width: double.infinity, // Ensure the container spans full width
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Center(
                child: Image.asset(
                  imageUrl,
                  height: 100, // Set height for the shoe image
                  width: 120, // Added width for the shoe image
                  fit: BoxFit.contain, // Ensures the image scales properly
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BEST SELLER',
                  style: GoogleFonts.raleway(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue.shade800,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  shoeName,
                  style: GoogleFonts.raleway(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('\$89.9'),
                    IconButton(
                      icon: const Icon(Icons.favorite),
                      color: Colors.red.shade300,
                      onPressed: () {
                        // Handle like action
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
