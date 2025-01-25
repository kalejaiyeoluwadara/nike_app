import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';
import 'package:ui/pages/favorites_page.dart';
import 'package:ui/pages/home_page.dart';
import 'package:ui/pages/notifications_page.dart';
import 'package:ui/pages/profile_page.dart';

class NavBarHandler extends StatefulWidget {
  const NavBarHandler({super.key});

  @override
  State<NavBarHandler> createState() => _NavBarHandlerState();
}

class _NavBarHandlerState extends State<NavBarHandler> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  // List of icon asset paths
  final List<String> iconPaths = [
    'assets/images/home.svg',
    'assets/images/heart.svg',
    'assets/images/bell.svg',
    'assets/images/person.svg',
  ];

  // List of corresponding page widgets
  final List<Widget> _pages = [
    const HomePage(),
    const FavoritesPage(),
    const NotificationsPage(),
    ProfilePage(),
  ];

  // List of titles for AppBar
  final List<String> _titles = [
    'Home',
    'Favorites',
    'Notifications',
    'Profile',
  ];

  void _onTabTapped(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 400),
        color: Colors.white,
        buttonBackgroundColor: Colors.transparent,
        index: _currentIndex,
        items: List.generate(iconPaths.length, (index) {
          final isActive = _currentIndex == index;
          return Tooltip(
            message: _titles[index],
            child: Container(
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
            ),
          );
        }),
        onTap: _onTabTapped,
      ),
    );
  }
}
