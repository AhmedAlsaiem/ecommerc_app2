class ChairModel {
  final String id;
  final String createdAt;
  final String title;
  final int price;
  final String category;
  final String imageUrl;
  final String subTitle;
  final String description;

  ChairModel({
    required this.id,
    required this.createdAt,
    required this.title,
    required this.price,
    required this.category,
    required this.imageUrl,
    required this.subTitle,
    required this.description,
  });
  factory ChairModel.fromjson(jsonData) {
    return ChairModel(
        id: jsonData['id'],
        createdAt: jsonData['createdAt'],
        title: jsonData['title'],
        price: jsonData['price'],
        category: jsonData['category'],
        imageUrl: jsonData['image'],
        subTitle: jsonData['subTitle'],
        description: jsonData['description']);
  }
}
