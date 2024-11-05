import 'package:flutter/material.dart';
import '../widgets/app_bar/header_app_bar.dart';
import '../widgets/card/card_product.dart';
import 'package:my_app/widgets/input/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      // Handle filter icon press
                    },
                  ),
                ],
              ),
            ),

            // Product List
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CardProduct(
                            nameProduct:
                                'SOIL MIX (~6kg) - Đất trồng sen đá 85% đá khoáng',
                            price: '200.000'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CardProduct(
                            imgLink: 'assets/images/products/Don_Go.jpg',
                            nameProduct: 'Đôn gỗ [Wooden Plant Stand]',
                            price: '100.000'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CardProduct(
                            imgLink:
                                'assets/images/products/Ngoc_Ngon_NiceDay.jpg',
                            nameProduct: 'Ngọc ngân Nice day',
                            price: '300.000'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CardProduct(
                            imgLink: 'assets/images/products/Van_Loc.jpg',
                            nameProduct: 'Vạn lộc Rainbow',
                            price: '15.000'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CardProduct(
                            nameProduct:
                                'SOIL MIX (~6kg) - Đất trồng sen đá 85% đá khoáng',
                            price: '200.000'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CardProduct(
                            imgLink: 'assets/images/products/Don_Go.jpg',
                            nameProduct: 'Đôn gỗ [Wooden Plant Stand]',
                            price: '100.000'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CardProduct(
                            imgLink:
                                'assets/images/products/Ngoc_Ngon_NiceDay.jpg',
                            nameProduct: 'Ngọc ngân Nice day',
                            price: '300.000'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CardProduct(
                            imgLink: 'assets/images/products/Van_Loc.jpg',
                            nameProduct: 'Vạn lộc Rainbow',
                            price: '15.000'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CardProduct(
                            nameProduct:
                                'SOIL MIX (~6kg) - Đất trồng sen đá 85% đá khoáng',
                            price: '200.000'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CardProduct(
                            imgLink: 'assets/images/products/Don_Go.jpg',
                            nameProduct: 'Đôn gỗ [Wooden Plant Stand]',
                            price: '100.000'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CardProduct(
                            imgLink:
                                'assets/images/products/Ngoc_Ngon_NiceDay.jpg',
                            nameProduct: 'Ngọc ngân Nice day',
                            price: '300.000'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CardProduct(
                            imgLink: 'assets/images/products/Van_Loc.jpg',
                            nameProduct: 'Vạn lộc Rainbow',
                            price: '15.000'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
