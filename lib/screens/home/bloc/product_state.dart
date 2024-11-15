import '../../../model/product.dart';

class ProductState {
  const ProductState({this.loading = false, this.products, this.message});

  final bool loading;
  final List<Product>? products;
  final String? message;

  ProductState copyWith({bool? loading, List<Product>? products, String? message}){
    return ProductState(loading: loading ?? this.loading, products: products ?? this.products, message: message ?? this.message);
  }
}
