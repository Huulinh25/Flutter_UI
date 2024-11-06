import 'package:flutter/material.dart';
import 'package:my_app/screens/checkout/checkout_screen.dart';
import 'package:my_app/widgets/button/confirm_button.dart';
import 'package:my_app/widgets/items/quantity_selector_item.dart';

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
            child: Image.network(
              imgLink ?? 'https://example.com/default_image.png',
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.grey[200],
                  alignment: Alignment.center,
                  child: const Text('Image not available'),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameProduct,
                  maxLines: 1,
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
                            return SingleChildScrollView(
                              child: Container(
                                color: Colors.white,
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.network(
                                          imgLink ??
                                              'https://example.com/default_image.png',
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                nameProduct,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const Text(
                                                "\$100",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        

                                        QuantitySelectorItem(
                                          quantity: 2,
                                          onIncrease: () {},
                                          onDecrease: () {},
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: sizes.map((size) {
                                        return Container(
                                          padding: const EdgeInsets.symmetric(horizontal:8),
                                          height: 28,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(color: Colors.grey, width: 1),
                                          ),
                                          margin: const EdgeInsets.only(right: 8),
                                          child: Center(
                                            child: Text(
                                              size,
                                              style: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                    const SizedBox(height: 10),
                                    Wrap(
                                      spacing: 8,
                                      children: [
                                        Colors.cyan,
                                        Colors.green,
                                        Colors.pink,
                                        Colors.black,
                                        Colors.purple
                                      ]
                                          .map((color) => Container(
                                                width: 28,
                                                height: 28,
                                                color: color,
                                              ))
                                          .toList(),
                                    ),
                                    const SizedBox(height: 16),
                                    Text("Add note", style: Theme.of(context).textTheme.labelSmall),
                                    const SizedBox(height: 8),
                                    TextField(
                                      minLines: 3,
                                      maxLines: 4,
                                      keyboardType: TextInputType.multiline,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                      decoration: const InputDecoration(
                                        hintText: "Enter your note",
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ConfirmButton(
                                        nameButton:'Add to cart',
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const CheckoutScreen()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
