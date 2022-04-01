import 'package:flutter/cupertino.dart';

import '../data models/Grocery_model.dart';

class GroceryManager extends ChangeNotifier {
  List<GroceryItem>? _sortedEntries = <GroceryItem>[];
  final Map<String, GroceryItem> _byId = {};

  /// Returns an unmodifiable copy of all known [ItemItem] objects.
  List<GroceryItem> get entries {
    // Restore the cached sorted list if necessary.
    _sortedEntries ??= _byId.values.toList()
      ..sort((a, b) => a.date.compareTo(b.date));

    // Now, return an unmodifiable list for the UI to render.
    return List.unmodifiable(_sortedEntries!);
  }

  void deleteItem(GroceryItem item) {
    _byId.remove(item.id);
    _sortedEntries = null;
    notifyListeners();
  }

  GroceryItem? getItem(String id) => _byId[id];

  void setItem(GroceryItem item) {
    _byId[item.id] = item;
    _sortedEntries = null;
    notifyListeners();
  }
}
