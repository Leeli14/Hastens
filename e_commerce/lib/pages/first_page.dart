import 'package:flutter/material.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/cart.dart';



class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List _pages = [
    // Home Page
    HomePage(),

    // Cart Page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar (title: Text('first page')),
      body: _pages[0],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),     


          // cart
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'cart'
          )
        ]
        ), 
    );
  }
}