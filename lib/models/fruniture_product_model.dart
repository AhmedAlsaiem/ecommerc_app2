class FurnitureProductModel {
  final String name;
  final String imageUrl;
  final String price;
  final String altPrice;
  final String category;
  final String sales;
  final String rate;
  final int id;
  // final RatingModel rating;

  FurnitureProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.altPrice,
    required this.category,
    required this.sales,
    required this.rate,
  });
  factory FurnitureProductModel.fromJson(jsonData) {
    return FurnitureProductModel(
        id: jsonData['id'],
        name: jsonData['name'],
        imageUrl: jsonData['img'],
        price: jsonData['price'],
        altPrice: jsonData['altPrice'],
        category: jsonData['catigory'],
        sales: jsonData['sales'],
        rate: jsonData['rate']);
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsondata) {
    return RatingModel(
      rate: jsondata['rate'],
      count: jsondata['count'],
    );
  }
}





















/*class FurnitureFurnitureProductModel {
  final String name;
  final String imageUrl;
  final String price;
  final String altPrice;
  final String category;
  final String length;
  final String color;
  final String sales;
  final String rate;
  final int id;

  FurnitureFurnitureProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.altPrice,
    required this.category,
    required this.length,
    required this.color,
    required this.sales,
    required this.rate,
  });
  factory FurnitureFurnitureProductModel.fromjson(jsonData) {
    return FurnitureFurnitureProductModel(
        id: jsonData['id'],
        name: jsonData['name'],
        imageUrl: jsonData['img'],
        price: jsonData['price'],
        altPrice: jsonData['altprice'],
        category: jsonData['catigory'],
        length: jsonData['lingth'],
        color: jsonData['color'],
        sales: jsonData['sales'],
        rate: jsonData['rate']);
  }
}
/* "id": 1,
        "name": "Bamboo Table",
        "price": "7,500$",
        "altPrice": "8,000$",
        "img": "https://furniture.nazmart.net/assets/tenant/uploads/media-uploader/furniture/frame-346161672748267.png",
        "catigory": "Bamboo Furniture",
        "lingth": "2",
        "color": "warning",
        "sales": "90 sales",
        "rate": "4" */*/