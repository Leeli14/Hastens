import 'package:flutter/material.dart';

import '../models/electronics.dart';

class ElectronicsTile extends StatelessWidget {
  final Electronics electronics;
  final void Function()? onPressed;
  final Widget icon;
  const ElectronicsTile({super.key, required this.electronics, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 20),
      child: ListTile(
        title: Text(electronics.name),
        subtitle: Text(electronics.price.toString()),
        leading: Image.asset(electronics.imagepath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      )
    );
  }
}