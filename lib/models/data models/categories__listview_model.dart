class CategoryModel {
  final String categoryName;
  final String icon;

  CategoryModel({required this.categoryName, required this.icon});
}

List<CategoryModel> categories = [
  CategoryModel(
      categoryName: 'Vegetables', icon: 'assets/icons/vegetables.png'),
  CategoryModel(categoryName: 'Fruits', icon: 'assets/icons/fruit.png'),
  CategoryModel(categoryName: 'Meat', icon: 'assets/icons/meat.png'),
  CategoryModel(categoryName: 'Fish', icon: 'assets/icons/fish.png')
];
