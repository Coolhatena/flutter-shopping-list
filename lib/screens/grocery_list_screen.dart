import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_data.dart';
import 'package:shopping_list/widgets/grocery_list_item.dart';

class GroceryListScreen extends StatelessWidget {
  const GroceryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => GroceryListItem(
          color: groceryItems[index].category.color,
          name: groceryItems[index].name,
          quantity: groceryItems[index].quantity,
        ),
      ),
    );
  }
}
