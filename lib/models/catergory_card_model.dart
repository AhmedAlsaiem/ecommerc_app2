class CateogryModel {
  final String title;
  final String subTitle;
  final String imagUrl;

  CateogryModel({
    required this.title,
    required this.subTitle,
    required this.imagUrl,
  });
}

List<CateogryModel> catergoryModelList = [
  CateogryModel(
      title: 'furniture',
      subTitle: '20 Brand',
      imagUrl: 'assets/images/f1_image.jpg'),
  CateogryModel(
      title: 'Chairs',
      subTitle: '18 Brand',
      imagUrl: 'assets/images/chair.jpg'),
  CateogryModel(
    title: 'Tabels',
    subTitle: '24 Brand',
    imagUrl: 'assets/images/f12.avif',
  ),
];
