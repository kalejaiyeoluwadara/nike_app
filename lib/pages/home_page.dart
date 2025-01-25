import 'package:flutter/material.dart';
import 'package:ui/components/category_selector.dart';
import 'package:ui/components/custom_app_bar.dart';
import 'package:ui/components/search_bar.dart';
import 'package:ui/pages/popular_shoe.dart';
import 'package:ui/pages/promotional_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> categories = ['All', 'Outdoor', 'Tennis', 'Running'];
  int activeIndex = 0; // Active category index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: const Drawer(),
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarP(),
            CategorySelector(
              categories: categories,
              activeIndex: activeIndex,
              onCategoryChange: (index) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            const PopularShoes(
              shoes: [
                {
                  'name': 'Nike Jordan',
                  'price': '402.00',
                  'imageUrl': 'assets/images/shoe5.png'
                },
                {
                  'name': 'Nike Air Max',
                  'price': '752.00',
                  'imageUrl': 'assets/images/shoe.png'
                },
                {
                  'name': 'Nike Jordan',
                  'price': '302.00',
                  'imageUrl': 'assets/images/shoe4.png'
                },
              ],
            ),
            const PromotionalBanner(),
          ],
        ),
      ),
    );
  }
}
