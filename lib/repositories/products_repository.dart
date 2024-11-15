import 'package:injectable/injectable.dart';
import 'package:my_app/services/products_service.dart';

import '../model/product.dart';

abstract class ProductRepository {
  Future<List<Product>> fetchProducts();
}

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> fetchProducts() async {
    return ProductsService.fetchProducts();
  }
}
