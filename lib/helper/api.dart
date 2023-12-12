import 'package:dio/dio.dart';

class Api {
  final dio = Dio();

  Future<dynamic> get(String url) async {
    final response = await dio.get('https://my-server-rc7a.onrender.com/Store');
    final data = response;
    if (response.statusCode == 200) {
      return data;
    } else {
      s
      throw ('there are an error ${response.statusCode}');
    }

  }
}
