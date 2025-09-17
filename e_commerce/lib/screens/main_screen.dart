import 'package:e_commerce/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'cart_screen.dart';
import 'search_screen.dart';
import 'favorites_screen.dart';
import 'package:provider/provider.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    FavoritesScreen(),
  ];
  
 
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Theme.of(context).iconTheme.color,
            ),            
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
            color: Theme.of(context).iconTheme.color,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.shopping_cart,
                color: Theme.of(context).iconTheme.color,
                ),
                if (cartProvider.itemCount > 0)
                  Positioned(
                    right: -6,
                    top: -6,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: const BoxConstraints(
                       minWidth: 16,
                       minHeight: 16,
                     ),
                     child: Text(
                       cartProvider.itemCount.toString(),
                       style: TextStyle(
                          color: Colors.white,
                         fontSize: 10,
                      ),
                       textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
              ,
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
            color: Theme.of(context).iconTheme.color,
            ),
            label: 'Favourites',
          ),
          
        ],
      ),
    );
  }
}