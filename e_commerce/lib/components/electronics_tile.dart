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
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 20),
      child: Padding(
        
        padding: const EdgeInsets.all( 8.0),
        child: ListTile(
          title: Text(electronics.name),
          subtitle: Text(electronics.productnumber),
          leading: Image.asset(electronics.imagepath),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0))
              ),
              backgroundColor: Theme.of(context).colorScheme.surface,
              foregroundColor: Theme.of(context).iconTheme.color,

            ) ,
            onPressed: onPressed, 
            child: const Text("View All"),
          ),
        ),
      )
    );
  }
}