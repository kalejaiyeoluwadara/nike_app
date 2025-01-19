import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _activeIndex = 0; // Track the active index

  // Array of image asset paths for the icons
  final List<String> iconPaths = [
    'assets/images/home.svg',
    'assets/images/heart.svg',
    'assets/images/bag.svg',
    'assets/images/bell.svg',
    'assets/images/person.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 400),
      color: Colors.grey.shade200,
      buttonBackgroundColor: Colors.transparent,
      index: _activeIndex,
      items: List.generate(iconPaths.length, (index) {
        final isActive = _activeIndex == index;
        return Container(
          decoration: BoxDecoration(
            color: isActive
                ? const Color.fromRGBO(13, 110, 253, 1)
                : Colors.transparent,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(15),
          child: CustomIcon(
            assetName: iconPaths[index],
            color: isActive ? Colors.white : Colors.black,
          ),
        );
      }),
      onTap: (index) {
        setState(() {
          _activeIndex = index;
        });
      },
    );
  }
}
