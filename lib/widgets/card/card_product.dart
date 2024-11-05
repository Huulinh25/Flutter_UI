import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    super.key,
    this.imgLink,
    required this.nameProduct,
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
                                        // Quantity controls
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius: BorderRadius.circular(
                                                    8), // Adjust the radius to your preference
                                              ),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius:
                                                        13, // Reduced radius
                                                    backgroundColor:
                                                        Colors.grey,
                                                    child: IconButton(
                                                      icon: const Icon(
                                                          Icons.remove,
                                                          size: 15),
                                                      onPressed: () {},
                                                      padding: EdgeInsets
                                                          .zero, // Remove padding to keep the button compact
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                                    child: Text(
                                                      "2", // Quantity display
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color:
                                                              Colors.grey[500]),
                                                    ),
                                                  ),
                                                  CircleAvatar(
                                                    radius:
                                                        13, // Reduced radius
                                                    backgroundColor:
                                                        Colors.grey,
                                                    child: SizedBox(
                                                      width: 15,
                                                      height: 15,
                                                      child: IconButton(
                                                        icon: const Icon(
                                                            Icons.add,
                                                            size: 15),
                                                        onPressed: () {},
                                                        padding:
                                                            EdgeInsets.zero,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    
                                    const SizedBox(height: 10),
                                    Wrap(
                                      spacing: 8,
                                      children: [
                                        Colors.blue,
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
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Add to cart logic
                                        },
                                        child: const Text("Add To Cart"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      color: Colors.grey[500],
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
