import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui/navtest/nav_page.dart';
import 'package:ui/components/icon.dart';
import 'package:ui/pages/favorites_page.dart';

class NavBarHandler extends StatefulWidget {
  const NavBarHandler({super.key});

  @override
  State<NavBarHandler> createState() => _NavBarHandlerState();
}

class _NavBarHandlerState extends State<NavBarHandler> {
  int _currentIndex = 0;
  final List<String> iconPaths = [
    'assets/images/home.svg',
    'assets/images/heart.svg',
    'assets/images/bag.svg',
    'assets/images/bell.svg',
    'assets/images/person.svg',
  ];
  final List<String> routes = [
    '/home_page',
    '/favorites_shoe_page',
    '/favorites_shoe_page',
    '/favorites_shoe_page',
    '/favorites_shoe_page',
  ];
  final List<Widget> _pages = [
    const HomePage(),
    const FavoritesPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 400),
          color: Colors.white,
          buttonBackgroundColor: Colors.transparent,
          index: _currentIndex,
          items: List.generate(iconPaths.length, (index) {
            final isActive = _currentIndex == index;
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
              _currentIndex = index; // Update the active index
            });

            // Navigate to the corresponding route
            if (index >= 0 && index < routes.length) {
              Navigator.pushNamed(context, routes[index]);
            }
          },
        ));
  }
}
