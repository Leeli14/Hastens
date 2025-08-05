import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
 MyBottomNavBar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.white,
          tabBackgroundColor: Theme.of(context).colorScheme.primary,
          tabBorderRadius: 26,
          tabActiveBorder: Border.all(
            color: Colors.white,
          ),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}