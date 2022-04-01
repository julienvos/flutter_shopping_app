class GroceryItem {
  final String id;
  final String groceryName;
  final String groceryCategory;
  final DateTime date;
  final int amount;

  GroceryItem(
      {required this.id,
      required this.groceryName,
      required this.groceryCategory,
      required this.date,
      required this.amount});
}
