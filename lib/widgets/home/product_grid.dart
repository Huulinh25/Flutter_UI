import 'package:flutter/material.dart';
import 'package:my_app/model/product.dart';
import 'package:my_app/widgets/card/card_product.dart';

@immutable
class ProductGrid extends StatelessWidget with ProductCardMixin {
  final List<Product> products;

  ProductGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: space),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: count,
        crossAxisSpacing: space,
        mainAxisSpacing: space,
        childAspectRatio: getWidthItem(context) / getHeightItem(context),
      ),
      itemCount: products.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return CardProduct(
          product: product,
        );
      },
    );
  }
}
