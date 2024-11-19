import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          color: Colors.indigo[200],
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.indigo.shade400,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.indigoAccent),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: "Cart",
            )
          ]),
    );
  }
}
