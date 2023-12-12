import 'package:ecommerc_app2/models/chair_model.dart';
import 'package:ecommerc_app2/models/fruniture_product_model.dart';
import 'package:dio/dio.dart';

class FurnitureProductServices {
  final dio = Dio();

  Future<List<FurnitureProductModel>> getAllFurnitureProducts() async {
    final response = await dio.get('https://my-server-rc7a.onrender.com/Store');

    var data = response.data;

    List<FurnitureProductModel> furnitureProductList = [];
    for (var i = 0; i < data.length; i++) {
      FurnitureProductModel model = FurnitureProductModel.fromJson(data[i]);

      furnitureProductList.add(model);
    }
    return furnitureProductList;
  }

  Future<List<ChairModel>> getAllChairsProducts() async {
    final response = await dio
        .get('https://5f210aa9daa42f001666535e.mockapi.io/api/products');

    var data = response.data;
    print('${response.data}');

    List<ChairModel> furnitureProductList = [];
    for (var i = 0; i < data.length; i++) {
      ChairModel model = ChairModel.fromjson(data[i]);

      furnitureProductList.add(model);
   //   print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
    }
    return furnitureProductList;
  }

  Future<List<FurnitureProductModel>> getTrendyFurnitureProducts() async {
    final response =
        await dio.get('https://my-server-rc7a.onrender.com/TrendyProducts');

    var data = response.data;

    List<FurnitureProductModel> furnitureProductList = [];
    for (var i = 0; i < data.length; i++) {
      FurnitureProductModel model = FurnitureProductModel.fromJson(data[i]);

      furnitureProductList.add(model);
    }
    return furnitureProductList;
  }
}
