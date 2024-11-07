import 'package:flutter/material.dart';
import 'package:my_app/widgets/app_bar/header_app_bar.dart';
import 'package:my_app/widgets/items/product_item.dart';
import 'package:my_app/widgets/modals/checkout_bottom_bar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderAppBar(
        title: 'Checkout',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductItem(
              imageUrl: 'https://via.placeholder.com/80',
              title: 'Table',
              size: 'S',
              color: Colors.blue,
              price: 100,
              quantity: 2,
              onIncrease: () {},
              onDecrease: () {},
            ),
            ProductItem(
              imageUrl: 'https://via.placeholder.com/80',
              title: 'Table',
              size: 'S',
              color: Colors.blue,
              price: 10,
              quantity: 3,
              onIncrease: () {},
              onDecrease: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CheckoutBottomBar(),
    );
  }
}
