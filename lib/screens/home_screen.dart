import 'package:flutter/material.dart';
import 'package:my_app/widgets/button/category_item_button.dart';
import '../widgets/app_bar/header_app_bar.dart';
import '../widgets/card/card_product.dart';
import 'package:my_app/widgets/input/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the list of products
    final List<Map<String, String>> products = [
      {
        'imgLink': 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
        'nameProduct': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
        'price': '200.000',
      },
      {
        'imgLink': 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
        'nameProduct': 'Mens Cotton Jacket',
        'price': '100.000',
      },
      {
        'imgLink':
            'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
        'nameProduct': 'Mens Casual Premium Slim Fit T-Shirts',
        'price': '300.000',
      },
      {
        'imgLink': 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg',
        'nameProduct': 'Mens Casual Slim Fit',
        'price': '15.000',
      },
      {
        'imgLink':
            'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
        'nameProduct':
            "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
        'price': '15.000',
      },
      {
        'imgLink':
            'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg',
        'nameProduct': "Solid Gold Petite Micropave",
        'price': '695',
      },
    ];

    return Scaffold(
      appBar: const HeaderAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar with Filter Icon
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                      child: SearchInput(hintText: 'Search for products here'),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.filter_list,
                      size: 45,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.all(16),
                            height: 350,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Label
                                Text(
                                  'By Category',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),

                                // Filter Buttons
                                const SizedBox(height: 10),
                                CategoryItem(
                                  text: 'Custom Button',
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.grey[500],
                                  borderColor: Colors.grey[500],
                                  onPressed: () {},
                                ),

                                const SizedBox(height: 10),
                                CategoryItem(
                                  text: 'Custom Button',
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.grey[500],
                                  borderColor: Colors.grey[500],
                                  onPressed: () {},
                                ),

                                const SizedBox(height: 10),
                                CategoryItem(
                                  text: 'Custom Button',
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.grey[500],
                                  borderColor: Colors.grey[500],
                                  onPressed: () {},
                                ),

                                const SizedBox(height: 40),

                                // Apply Button
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize:
                                          const Size(double.infinity, 50),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context); // Close the modal
                                    },
                                    child: const Text('Apply'),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),

            // Product List
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 10, // Horizontal spacing between cards
                  mainAxisSpacing: 10, // Vertical spacing between cards
                  childAspectRatio: 0.74, // Adjust aspect ratio for the card
                ),
                itemCount: products.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return CardProduct(
                    imgLink: products[index]['imgLink']!,
                    nameProduct: products[index]['nameProduct']!,
                    price: products[index]['price']!,
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
