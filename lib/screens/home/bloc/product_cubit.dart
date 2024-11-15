import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/repositories/products_repository.dart';
import 'package:my_app/screens/home/bloc/product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._productRepository) : super(const ProductState());
  final ProductRepository _productRepository;

  Future<void> fetchProducts() async {
    emit(state.copyWith(loading: true));
    try {
      final products = await _productRepository.fetchProducts();
      emit(state.copyWith(loading: false, products: products));
    } catch (e) {
      emit(state.copyWith(loading: false, message: 'Failed to fetch products'));
    }
  }
}
