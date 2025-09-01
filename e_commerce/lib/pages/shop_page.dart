
import 'package:e_commerce/components/electronics_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:e_commerce/models/electronics.dart'; // Make sure this import exists and points to the correct file
import 'package:e_commerce/models/electronics_shop.dart'; // Import the ElectronicsShop provider

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  // add to cart function
  void addItemToCart(BuildContext context, Electronics electronics) {
    // add to cart function from provider
    Provider.of<ElectronicsShop>(context, listen: false).addItemToCart(electronics);
  

  // let the user know its been added
 
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Added to Cart!'),
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<ElectronicsShop>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Heading message
                Text(
                  'Shop',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),

                // List of electronics to buy
                Expanded(
                  child: ListView.builder(
                    itemCount: value.electronicsShop.length,
                    itemBuilder: (context, index) {
                      // get individual electronics
                      Electronics eachElectronics = value.electronicsShop[index];

                      //return the tile for this electronics
                      return ElectronicsTile(
                        electronics: eachElectronics,
                        icon: Icon(Icons.add),
                        
                        onPressed: () => addItemToCart(context, eachElectronics)
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}