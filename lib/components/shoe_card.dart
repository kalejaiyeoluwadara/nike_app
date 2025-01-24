import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoeCard extends StatefulWidget {
  final String shoeName;
  final String price;
  final String imageUrl;
  final VoidCallback onAddClick;

  const ShoeCard({
    super.key,
    required this.shoeName,
    required this.price,
    required this.imageUrl,
    required this.onAddClick,
  });

  @override
  _ShoeCardState createState() => _ShoeCardState();
}

class _ShoeCardState extends State<ShoeCard> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/shoe_page');
      },
      child: Container(
        width: 163,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: toggleLike,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: isLiked ? Colors.red.shade200 : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 0, bottom: 0, left: 12),
                  child: Image.asset(
                    widget.imageUrl,
                    height: 90,
                    width: 130,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BEST SELLER',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF0D6EFD),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        widget.shoeName,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0, left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${widget.price}',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onAddClick,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Color(0xFF0D6EFD),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
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
