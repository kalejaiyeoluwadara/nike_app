import 'package:flutter/material.dart';
import 'package:ui/components/shoe_card.dart';

class PopularShoes extends StatelessWidget {
  final List<Map<String, String>> shoes;

  const PopularShoes({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20.0, bottom: 20),
      child: SizedBox(
        height: 220,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: shoes.map((shoe) {
            return ShoeCard(
              shoeName: shoe['name']!,
              price: shoe['price']!,
              imageUrl: shoe['imageUrl']!,
              onAddClick: () {},
            );
          }).toList(),
        ),
      ),
    );
  }
}
