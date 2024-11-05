import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    super.key,
    this.imgLink,
    this.nameProduct = "Product name",
    this.price = "200.000",
  });
  final String? imgLink;
  final String nameProduct;
  final String? price;

  @override
  Widget build(BuildContext context) {
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
            child: Image.asset(
              imgLink ?? 'assets/images/products/SOIL_MIX.png',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Text(
                  nameProduct,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, // quá kích thước sẽ hiển thị ...
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$price VNĐ",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: IconButton(
                        icon: const Icon(
                          Icons.shopping_cart_checkout,
                        ),
                        onPressed: () {},
                        color: Colors.grey[500],
                      ),
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
