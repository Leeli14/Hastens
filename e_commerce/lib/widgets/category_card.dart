import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final VoidCallback onViewAll;

  const CategoryCard({
    super.key,
    required this.category,
    required this.onViewAll,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: ListTile(
        leading: Image.asset(category.image, width: 40, height: 40),
        title: Text(category.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${category.products.length} Products'),
        trailing: ElevatedButton(
          onPressed: onViewAll, 
          child: const Text('View All'),
      ),
    ),
    );
  }
  }