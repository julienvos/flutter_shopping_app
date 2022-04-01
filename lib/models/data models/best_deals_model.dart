class BestDealsModel {
  final String dealTitle;
  final String dealCategory;
  final String dealIcon;

  BestDealsModel(
      {required this.dealTitle,
      required this.dealCategory,
      required this.dealIcon});
}

List<BestDealsModel> bestDeals = [
  BestDealsModel(
      dealTitle: 'Orange',
      dealCategory: 'Fruits',
      dealIcon: 'assets/icons/orange.png'),
  BestDealsModel(
      dealTitle: 'StrawBerry',
      dealCategory: 'Fruits',
      dealIcon: 'assets/icons/strawberry.png'),
  BestDealsModel(
      dealTitle: 'Banana',
      dealCategory: 'Fruits',
      dealIcon: 'assets/icons/banana.png'),
  BestDealsModel(
      dealTitle: 'Carrots',
      dealCategory: 'Vegatables',
      dealIcon: 'assets/icons/carrot.png')
];
