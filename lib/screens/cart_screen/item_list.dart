import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/providers/Grocery_manager.dart';
import 'GroceryEntryScreen.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GroceryManager>(builder: ((context, manager, child) {
      final entries = manager.entries;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: entries.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () => context.go("/grocery/${entries[index].id}"),
                child: ListTile(
                  title: Text(
                    entries[index].groceryName,
                    style: GoogleFonts.openSans(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  trailing: Text(
                    entries[index].amount.toString(),
                    style: GoogleFonts.eagleLake(
                        fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                  subtitle: Text(
                    entries[index].groceryCategory,
                    style: GoogleFonts.openSans(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                ),
              );
            })),
      );
    }));
  }
}
