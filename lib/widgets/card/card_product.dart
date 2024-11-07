import 'package:flutter/material.dart';
import 'package:my_app/widgets/modals/add_to_cart_modal.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    super.key,
    this.imgLink,
    required this.nameProduct,
    this.price,
  });

  final String? imgLink;
  final String nameProduct;
  final String? price;

  @override
  Widget build(BuildContext context) {
    final List<String> sizes = ['S', 'M', 'L', 'XL', 'XXXL'];
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: AspectRatio(
              aspectRatio: 1.4,
              child: Image.network(
                imgLink ?? 'https://example.com/default_image.png',
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
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameProduct,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    IconButton(
                      color: Colors.grey[500],
                      icon: const Icon(Icons.shopping_cart_checkout),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return AddToCartModal(
                              imgLink: imgLink,
                              nameProduct: nameProduct,
                              sizes: sizes,
                            );
                          },
                        );
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
