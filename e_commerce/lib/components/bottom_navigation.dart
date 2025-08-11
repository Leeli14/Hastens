

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
 const MyBottomNavBar({super.key, required this.onTabChange,});

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
          color: Theme.of(context).textTheme.bodyMedium?.color,
          gap: 8,
          onTabChange: onTabChange,
          activeColor: Theme.of(context).textTheme.bodyLarge?.color,
          tabBackgroundColor: Theme.of(context).colorScheme.surface,
          tabBorderRadius: 26,
          tabActiveBorder: Border.all(
            color: Theme.of(context).colorScheme.primary,
          ),
          tabs: [
            GButton(
              icon: Icons.home,
              iconColor: Theme.of(context).iconTheme.color,
              text: 'Shop',
              textColor: Theme.of(context).textTheme.bodyMedium?.color,
            ),
            GButton(
              icon: Icons.shopping_cart,
              iconColor: Theme.of(context).iconTheme.color,
              text: 'Cart',
              textColor: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ],
        ),
      ),
    );
  }
}