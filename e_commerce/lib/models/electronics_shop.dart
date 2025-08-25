import 'package:flutter/foundation.dart';
import 'electronics.dart';

class ElectronicsShop extends ChangeNotifier {
  //electronics for sale
  final List<Electronics> _shop = [
    Electronics(
      name: 'SmartPhone',
      brand: 'Samsung',
      price: 400000.0,
      imagepath:
     'https://example.com/smartphone.jpg',
    ),
    
    Electronics(
      name: 'Laptop',
      brand: 'Dell',
      price: 800000.0,
      imagepath:
          'https://example.com/laptop.jpg',
    ),
    Electronics(
      name: 'Headphones',
      brand: 'Sony',
      price: 150000.0,
      imagepath:
          'https://example.com/headphones.jpg',
    ),
    Electronics(
      name: 'Smartwatch',
      brand: 'Apple',
      price: 300000.0,
      imagepath:
          'https://example.com/smartwatch.jpg',
    ),  
  ];

  // user cart
  // ignore: prefer_final_fields
  List<Electronics> _userCart = [];

  //get electronics list
  List<Electronics> get electronicsShop => _shop;

  //get cart items
  List<Electronics> get userCart => _userCart;

  //add to cart
  void addItemToCart(Electronics electronics) {
    _userCart.add(electronics);
    notifyListeners();
  }

  //remove from cart
  void removeItemFromCart(Electronics electronics) {
    _userCart.remove(electronics);
    notifyListeners();
  }


}