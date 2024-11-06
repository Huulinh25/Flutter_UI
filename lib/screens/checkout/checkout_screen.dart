import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/screens/checkout/checkout_success_screen.dart';
import 'package:my_app/widgets/app_bar/header_app_bar.dart';
import 'package:my_app/widgets/button/confirm_button.dart';
import 'package:my_app/widgets/items/product_item.dart';

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
      bottomNavigationBar: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),

          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subtotal',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Tax (10%)',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Total',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$100",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "\$10",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "\$110",
                          style: TextStyle(color: Colors.blue, fontSize: 19),
                        ),
                      ],
                    ),
                ],
              ),
              Divider(color: Colors.grey[300], thickness: 1),
          
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        color: Colors.lightBlueAccent,
                        icon: const Icon(FontAwesomeIcons.ticket),
                        onPressed: () {},
                      ),
                      const Text("Add Coupon", style: TextStyle(color: Colors.lightBlueAccent))
                    ],
                  ),
                ],
              ),
              
              const Spacer(),

              Column(
                children: [
                  ConfirmButton(
                    nameButton:'Pay Now',
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => const CheckouSuccesstScreen()),
                        );
                    },
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
