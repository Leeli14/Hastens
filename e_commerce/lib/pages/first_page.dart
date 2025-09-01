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
            height: 80.0,
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage('/workspaces/Hastens/e_commerce/assets/images/Nike_logo.png')
              

            
            ),
          ),
          
          
          Expanded(
            child: _pages[_selectedindex],
          ),
        ]
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: _navigateBottomBar,
      ),
    );
  }
}
