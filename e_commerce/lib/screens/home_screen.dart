import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../widgets/category_card.dart';
import '../screens/product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<ProductProvider>(context).categories;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          TextButton(
            onPressed: () {
              // See all Products
            },
            child: const Text(
              "HASTENS",
            ),
          ),
          ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryCard(
            category: category,
            onViewAll: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductListScreen(category: categories[index]),
                ),
              );


            },
          );
        },
      ),
    );
  }
}