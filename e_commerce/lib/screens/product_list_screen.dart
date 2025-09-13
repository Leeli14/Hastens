import 'package:flutter/material.dart';
import '../models/category.dart';
import '../widgets/product_card.dart';

class ProductListScreen extends StatelessWidget {
  final Category category;

  const ProductListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: category.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final product = category.products[index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}