import 'package:flutter/foundation.dart';
import 'electronics.dart';



class ElectronicsShop extends ChangeNotifier {
  //electronics for sale
  final List<Electronics> _shop = [
    Electronics(
      name: 'Charger',
      brand: '',
      price: 40000.0,
      imagepath:
     '/workspaces/Hastens/e_commerce/assets/images/white_charger.jpeg',
    ),
    
    Electronics(
      name: 'Power Bank',
      brand: 'Dell',
      price: 80000.0,
      imagepath:
          '/workspaces/Hastens/e_commerce/assets/images/black_power_bank.jpeg',
    ),
    Electronics(
      name: 'USB Cable',
      brand: 'Sony',
      price: 15000.0,
      imagepath:
          '/workspaces/Hastens/e_commerce/assets/images/black_usb.jpeg',
    ),
    Electronics(
      name: 'Headsets',
      brand: 'Apple',
      price: 300000.0,
      imagepath:
          '/workspaces/Hastens/e_commerce/assets/images/headsets.jpeg',
    ),
    Electronics(
      name: 'Airpods',
      brand: 'Apple',
      price: 250000.0,
      imagepath:
          '/workspaces/Hastens/e_commerce/assets/images/white_airpods.jpeg',
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