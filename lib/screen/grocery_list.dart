import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceryListScreen extends StatelessWidget {
  const GroceryListScreen({
    super.key,
  });

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your groceries'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(groceryItems[index].name),
          leading: Container(
            width: 16,
            height: 16,
            color: groceryItems[index].category.color,
          ),
          trailing: Text(groceryItems[index].quantity.toString()),
        ),
      ),
    );
  }
}
