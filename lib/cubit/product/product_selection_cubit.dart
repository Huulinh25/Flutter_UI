import 'package:flutter_bloc/flutter_bloc.dart';

class ProductSelectionCubit extends Cubit<Map<int, int>> {
  ProductSelectionCubit() : super({});

  // Handles product selection and updates count
  void handleSelectionProduct(int productId) {
    final newSelection = Map<int, int>.from(state);

    if (newSelection.containsKey(productId)) {
      newSelection[productId] = newSelection[productId]! + 1; // Increment count if product is already selected
    } else {
      newSelection[productId] = 1; // Add product with count 1 if not selected
    }

    emit(newSelection);
    print('aaaaaaaaa $newSelection');
  }

  void handleDecreaseProduct(int productId) {
    final newSelection = Map<int, int>.from(state);

    if (newSelection.containsKey(productId)) {
      if (newSelection[productId]! > 1) {
        newSelection[productId] = newSelection[productId]! - 1; // Decrease count if greater than 1
      } else {
        newSelection.remove(productId); // Remove product if count is 1
      }
    }

    emit(newSelection);
    // print('bbbbbbbbbb $newSelection');
  }
}
