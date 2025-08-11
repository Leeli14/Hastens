import 'package:e_commerce/components/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/pages/shop_page.dart';
import 'package:e_commerce/pages/cart.dart';



class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // keeps track of the current page to display
  int _selectedindex = 0;

  // this method updates new selected page
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;   
    } 
    );
  }
  
  // The pages we have in our app
  final List _pages = [
    // Home Page
    ShopPage(),

    // Cart Page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: kToolbarHeight,
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Hastens E-Commerce',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 24.0).copyWith(fontFamily: 'Roboto'),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: _pages[_selectedindex],
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: _navigateBottomBar,
      ),
    );
  }
}
