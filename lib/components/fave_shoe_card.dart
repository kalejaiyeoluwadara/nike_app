import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaveShoeCard extends StatefulWidget {
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
  _FaveShoeCardState createState() => _FaveShoeCardState();
}

class _FaveShoeCardState extends State<FaveShoeCard> {
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
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 8, top: 12),
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
                          color: isLiked ? Colors.red.shade300 : Colors.grey,
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
                padding: const EdgeInsets.symmetric(horizontal: 12),
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
                    Row(
                      children: [
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          child: Center(
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[700],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          child: Center(
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red[700],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
