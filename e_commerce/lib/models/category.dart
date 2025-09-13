import 'product.dart';  

class Category {
  final String image;
  final String name;
  final List<Product> products;

  Category({
    required this.image,
    required this.name,
    required this.products,
  });
}