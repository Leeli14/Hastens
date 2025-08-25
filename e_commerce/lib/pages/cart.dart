import 'package:e_commerce/components/electronics_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/electronics.dart';
import '../models/electronics_shop.dart';




class CartPage extends StatefulWidget {
  const CartPage({super.key});


  @override
  State<CartPage> createState() => _CartPageState();
}


class _CartPageState extends State<CartPage> {

  void removeItemFromCart(Electronics electronics) {
    Provider.of<ElectronicsShop>(context, listen: false).removeItemFromCart(electronics);
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<ElectronicsShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // heading
              Text(
                'Your Cart',
                style: TextStyle(
                  fontSize: 24,
                  
                ),
              ),

                // List of cart items
                Expanded(
                  child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      //get individual cart items
                      Electronics eachElectronics = value.userCart[index];
                      // return Electronics tile
                      return ElectronicsTile(
                        electronics: eachElectronics,
                        onPressed: () => removeItemFromCart(eachElectronics),
                        icon: Icon(Icons.delete),
                      );
                    }),
                )
              
            ]
          )
        ),
      )
    );
  }
}