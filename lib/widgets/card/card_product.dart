import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/model/product_model.dart';
import 'package:my_app/widgets/modals/add_to_cart_modal.dart';
import '../../cubit/product/product_selection_cubit.dart';

class CardProduct extends StatelessWidget {
  final ProductModel product;

  const CardProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final List<String> sizes = ['S', 'M', 'L', 'XL', 'XXXL'];
    final List<Color> colors = [Colors.cyan, Colors.green, Colors.pink, Colors.black, Colors.purple];
    final selectedProducts = context.watch<ProductSelectionCubit>().state;
    final isSelected = selectedProducts[product.id] ?? -1;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext bottomSheetContext) {
                  return BlocProvider<ProductSelectionCubit>.value(
                    value: BlocProvider.of<ProductSelectionCubit>(context),
                    child: AddToCartModal(
                      product: product,
                      sizes: sizes,
                      colors: colors,
                    ),
                  );
                },
              );
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: AspectRatio(
                    aspectRatio: 1.4,
                    child: Image.network(
                      product.image ?? 'https://example.com/default_image.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: double.infinity,
                          color: Colors.grey[200],
                          alignment: Alignment.center,
                          child: const Text('Image not available'),
                        );
                      },
                    ),
                  ),
                ),
                if (isSelected >= 0)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title ?? 'No Title',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${product.price?.toString() ?? 'error'}",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black),
                    ),
                    IconButton(
                      color: Colors.grey[500],
                      icon: const Icon(Icons.shopping_cart_checkout),
                      onPressed: () {
                        context.read<ProductSelectionCubit>().handleSelectionProduct(product.id!);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
