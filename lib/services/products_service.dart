import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/product.dart';

class ProductsService {
  static const url = 'https://fakestoreapi.com/products';

  static List<Product> parseProduct(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Product> products = list.map((model) => Product.fromJson(model)).toList();
    return products;
  }

  static Future<List<Product>> fetchProducts({int page = 1}) async {
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
