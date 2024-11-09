import 'package:flutter_bloc/flutter_bloc.dart';
import '../../network/network_request.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<FetchProductsEvent>((event, emit) async {
      emit(ProductLoading());
      try {
        final products = await NetWorkRequest.fetchProducts();
        emit(ProductLoaded(products));
      } catch (e) {
        emit(ProductError('Failed to fetch products'));
      }
    });
  }
}
