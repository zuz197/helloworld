import 'package:dio/dio.dart';
import 'package:helloworld/model/product.dart';

class API {
  Future<List<Product>> getAllProduct() async {
    try {
      var dio = Dio();
      var url = 'https://fakestoreapi.com/products';
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        List data = response.data;
        List<Product> ls =
            data.map((e) => Product.fromJson(e)).toList();
        return ls;
      } else {
        print("Lỗi API");
        return [];
      }
    } catch (e) {
      print("Lỗi: $e");
      return [];
    }
  }
}

var testAPI = API();
