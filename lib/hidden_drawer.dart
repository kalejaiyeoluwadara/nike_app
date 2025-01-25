import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:ui/pages/notifications_page.dart';
import 'package:ui/pages/profile_page.dart';
import 'package:ui/pages/home_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  late List<ScreenHiddenDrawer> _menuItems;

  @override
  void initState() {
    super.initState();
    _menuItems = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: const TextStyle(color: Colors.white, fontSize: 18),
          selectedStyle: const TextStyle(color: Colors.blue, fontSize: 18),
          colorLineSelected: Colors.blue,
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Profile',
          baseStyle: const TextStyle(color: Colors.white, fontSize: 18),
          selectedStyle: const TextStyle(color: Colors.blue, fontSize: 18),
          colorLineSelected: Colors.blue,
        ),
        ProfilePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Notifications',
          baseStyle: const TextStyle(color: Colors.white, fontSize: 18),
          selectedStyle: const TextStyle(color: Colors.blue, fontSize: 18),
          colorLineSelected: Colors.blue,
        ),
        const NotificationsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.black,
      screens: _menuItems,
      slidePercent: 50, // Adjust the drawer's slide width
      contentCornerRadius: 30.0,
      verticalScalePercent:
          90, // Scale content vertically when the drawer is open
    );
  }
}
