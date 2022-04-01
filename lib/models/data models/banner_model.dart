class BannerModel {
  final String title;
  final String image;

  BannerModel({required this.title, required this.image});
}

List<BannerModel> banners = [
  BannerModel(
      title: 'Good Food',
      image:
          'https://images.unsplash.com/photo-1467003909585-2f8a72700288?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxfDB8MXxhbGx8fHx8fHx8fA&ixlib=rb-1.2.1&q=80&w=1080&utm_source=unsplash_source&utm_medium=referral&utm_campaign=api-credit'),
  BannerModel(
      title: 'Other good Food',
      image:
          'https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxfDB8MXxhbGx8fHx8fHx8fA&ixlib=rb-1.2.1&q=80&w=1080&utm_source=unsplash_source&utm_medium=referral&utm_campaign=api-credit'),
  BannerModel(
      title: "Also good",
      image:
          'https://images.unsplash.com/photo-1463569482774-e63b918040ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY0MjQwNDUxNQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),
  BannerModel(
      title: 'Good',
      image:
          'https://images.unsplash.com/photo-1540304453527-62f979142a17?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY0NDY5NjE5Mw&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080')
];
