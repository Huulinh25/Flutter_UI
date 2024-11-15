import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/model/product.dart';
import 'package:my_app/widgets/modals/add_to_cart_modal.dart';

import '../../cubit/product/product_selection_cubit.dart';

mixin ProductCardMixin {
  int count = 2;
  double space = 15;
  double paddingItemContent = 8;
  double textHeight = 44;
  double bottomViewHeight = 40;

  double getWidthItem(BuildContext context) {
    double widthScreen = MediaQuery.sizeOf(context).width - 2 * space;
    return (widthScreen - space * (count - 1)) / count;
  }

  double getImgSize(BuildContext context) {
    return getWidthItem(context) - 2 * paddingItemContent;
  }

  double getHeightItem(BuildContext context) {
    return paddingItemContent +
        getImgSize(context) +
        paddingItemContent +
        textHeight +
        paddingItemContent +
        bottomViewHeight +
        paddingItemContent;
  }
}

class CardProduct extends StatelessWidget with ProductCardMixin {
  CardProduct({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    final List<String> sizes = ['S', 'M', 'L', 'XL', 'XXXL'];
    final List<Color> colors = [
      Colors.cyan,
      Colors.green,
      Colors.pink,
      Colors.black,
      Colors.purple
    ];
    final selectedProducts = context.watch<ProductSelectionCubit>().state;
    final isSelected = selectedProducts[product.id] ?? -1;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingItemContent, vertical: paddingItemContent),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            // onTap: () {
            //   showModalBottomSheet(
            //     context: context,
            //     builder: (BuildContext bottomSheetContext) {
            //       return BlocProvider<ProductSelectionCubit>.value(
            //         value: BlocProvider.of<ProductSelectionCubit>(context),
            //         child: AddToCartModal(
            //           product: product,
            //           sizes: sizes,
            //           colors: colors,
            //         ),
            //       );
            //     },
            //   );
            // },
            child: Stack(
              children: [
                SizedBox(
                  height: getImgSize(context),
                  width: getImgSize(context),
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
          SizedBox(height: paddingItemContent),
          SizedBox(
            height: textHeight,
            child: Text(
              product.title ?? 'No Title',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          SizedBox(height: paddingItemContent),
          SizedBox(
            height: bottomViewHeight,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "\$${product.price?.toString() ?? 'error'}",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black),
                  ),
                ),
                IconButton(
                  color: Colors.grey[500],
                  icon: const Icon(Icons.shopping_cart_checkout),
                  onPressed: () {
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
