import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/product/product_selection_cubit.dart';
import '../../screens/checkout/checkout_screen.dart';
import '../button/confirm_button.dart';

class SelectedProductsModal extends StatelessWidget {
  const SelectedProductsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProductSelectionCubit, Map<int, int>, int>(
      selector: (selectedProducts) => selectedProducts.values.fold(0, (previous, current) => previous + current),
      builder: (context, selectedCount) {
        return selectedCount > 0
            ? Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
                    children: [
                      Text(
                        '$selectedCount items',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('\$120', style: TextStyle(fontSize: 25)),
                          SizedBox(
                            width: 130,
                            height: 40,
                            child: ConfirmButton(
                              nameButton: 'Checkout',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const CheckoutScreen()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
