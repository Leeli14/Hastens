import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/product.dart';

class ProductProvider extends ChangeNotifier {
  final List<Category> _categories = [
    Category(
      name: "Earbuds",
      image: "assets/images/earbuds.png",
      products: [
        Product(name: "Bass Earbuds", price: 2500, image: "assets/images/earbuds.png", brand: "BrandA"),
        Product(name: "Pro Earbuds", price: 3200, image: "assets/images/airpods.png", brand: "BrandB"),
      ],
    ),
    Category(
      name: "Speakers",
      image: "assets/images/speaker.png",
      products: [
        Product(name: "Portable Speaker", price: 5000, image: "assets/images/speaker.png", brand: "BrandC"),
      ],
    ),
    Category(
      name: "Powerbanks",
      image: "assets/images/powerbank.png",
      products: [
        Product(name: "Grenade Series 5000mAh", price: 2450, image: "assets/images/powerbank.png", brand: "BrandD"),
        Product(name: "30000mAh Powerbank", price: 4500, image: "assets/images/powerbank.png" , brand: "BrandE"),
        Product(name: "Tangee Series 10000mAh", price: 3800, image: "assets/images/powerbank.png" , brand: "BrandF"),
        Product(name: "Thoway Series 10000mAh", price: 2625, image: "assets/images/powerbank.png" , brand: "BrandG"),
      ],
    ),
    Category(
      name: "Headphones",
      image: "assets/images/headphones.png",
      products: [
        Product(name: "Wireless Headphones", price: 6000, image: "assets/images/headphones.png" , brand: "BrandH"),
      ],
    ),
    Category(
      name: "Smart Watches",
      image: "assets/images/smartwatch.png",
      products: [
        Product(name: "Pro Smart Watch", price: 7500, image: "assets/images/smartwatch.png" , brand: "BrandI"),
      ],
    ),
    Category(
      name: "Phones",
      image: "assets/images/phone.png",
      products: [
        Product(name: "Smartphone X", price: 25000, image: "assets/images/phone.png" , brand: "BrandJ"),
      ],
    )
  ];

  List<Category> get categories => _categories;
}
