import 'package:flutter/material.dart';
import '../models/product.dart';

class CartProvider extends ChangeNotifier{
  final Map<Product, int> _items = {};

  Map<Product, int> get items => _items;

  void addToCart(Product product) {
    if (_items.containsKey(product)) {
      _items[product] = _items[product]! + 1;
    } else {
      _items[product] = 1;
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    if (_items.containsKey(product) && _items[product]! > 1) {
      _items[product] = _items[product]! - 1;
    } else {
      _items.remove(product);
    }
    notifyListeners();
  }


void clearCart() {
  _items.clear();
  notifyListeners();
}

int get itemCount => _items.values.fold(0, (sum, quantity) => sum + quantity);


double get totalPrice => _items.entries.fold(0, (sum, entry) => sum + entry.key.price * entry.value);
}