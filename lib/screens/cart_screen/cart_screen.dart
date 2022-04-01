import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/providers/Grocery_manager.dart';

import 'GroceryEntryScreen.dart';
import 'empty_screen.dart';
import 'item_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<GroceryManager>(
          builder: (context, manager, child) {
            return manager.entries.isEmpty ? EmptyScreen() : ItemList();
          },
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => context.go('/grocery/add'),
            child: Icon(Icons.add)));
  }
}
