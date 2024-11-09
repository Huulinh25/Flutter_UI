import 'package:flutter/material.dart';
import 'package:my_app/model/product_model.dart';
import 'package:my_app/widgets/card/card_product.dart';


class ProductGrid extends StatelessWidget {
  final List<ProductModel> products;

  const ProductGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.74,
        ),
        itemCount: products.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return CardProduct(
            imgLink: product.image ?? '',
            nameProduct: product.title ?? 'No Title',
            price: product.price?.toString() ?? '0',
          );
        },
      ),
    );
  }
}