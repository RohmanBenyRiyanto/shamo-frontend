import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shamo/models/product_model.dart';

import 'package:shamo/models/user_model.dart';

class ProductServices {
  String baseUrl = 'https://srv1.shamoserver.my.id/api';

  Future<List<ProductModel>> getProducts() async {
    var url = Uri.parse('$baseUrl/products');
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Mengambil Product');
    }
  }
}
