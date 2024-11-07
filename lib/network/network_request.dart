import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:my_app/model/product_model.dart';
import 'package:http/http.dart' as http;

class NetWorkRequest {
  static const url = 'https://fakestoreapi.com/products';

  static List<ProductModel> parseProduct(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<ProductModel> products = list.map((model) => ProductModel.fromJson(model)).toList();
    return products;
  }

  static Future<List<ProductModel>> fetchProducts({int page = 1}) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return compute(parseProduct, response.body);
    } else if (response.statusCode == 404) {
      throw Exception("Product not found");
    } else {
      throw Exception("Cannot get products");
    }
  }
}
