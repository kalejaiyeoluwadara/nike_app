import 'package:flutter/material.dart';
import 'package:ui/components/icon.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder(
        builder: (BuildContext context) {
          return Container(
            margin: const EdgeInsets.only(left: 12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              iconSize: 30,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const CustomIcon(assetName: 'assets/images/menu.svg'),
            ),
          );
        },
      ),
      centerTitle: true,
      title: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            left: -30,
            child: CustomIcon(assetName: 'assets/images/highlight.svg'),
          ),
          Text(
            'Explore',
            style: GoogleFonts.raleway(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const CustomIcon(assetName: 'assets/images/bag.svg'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
