import 'package:flutter/material.dart';
import '../widgets/app_bar/header_app_bar.dart';
import '../widgets/card/card_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HeaderAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space evenly between columns
                children: [
                  Expanded(
                    child: CardProduct(nameProduct: 'SOIL MIX (~6kg) - Đất trồng sen đá 85% đá khoáng', price: '200.000'),
                  ),
                  SizedBox(width: 20), // Optional spacing between items
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Don_Go.jpg',nameProduct: 'Đôn gỗ [Wooden Plant Stand]', price: '100.000'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space evenly between columns
                children: [
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Ngoc_Ngon_NiceDay.jpg', nameProduct: 'Ngọc ngân Nice day', price: '300.000'),
                  ),
                  SizedBox(width: 20), // Optional spacing between items
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Van_Loc.jpg', nameProduct: 'Vạn lộc Rainbow', price: '15'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space evenly between columns
                children: [
                  Expanded(
                    child: CardProduct(nameProduct: 'SOIL MIX (~6kg) - Đất trồng sen đá 85% đá khoáng', price: '200.000'),
                  ),
                  SizedBox(width: 20), // Optional spacing between items
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Don_Go.jpg',nameProduct: 'Đôn gỗ [Wooden Plant Stand]', price: '100.000'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space evenly between columns
                children: [
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Ngoc_Ngon_NiceDay.jpg', nameProduct: 'Ngọc ngân Nice day', price: '300.000'),
                  ),
                  SizedBox(width: 20), // Optional spacing between items
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Van_Loc.jpg', nameProduct: 'Vạn lộc Rainbow', price: '15'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space evenly between columns
                children: [
                  Expanded(
                    child: CardProduct(nameProduct: 'SOIL MIX (~6kg) - Đất trồng sen đá 85% đá khoáng', price: '200.000'),
                  ),
                  SizedBox(width: 20), // Optional spacing between items
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Don_Go.jpg',nameProduct: 'Đôn gỗ [Wooden Plant Stand]', price: '100.000'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space evenly between columns
                children: [
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Ngoc_Ngon_NiceDay.jpg', nameProduct: 'Ngọc ngân Nice day', price: '300.000'),
                  ),
                  SizedBox(width: 20), // Optional spacing between items
                  Expanded(
                    child: CardProduct(imgLink: 'assets/images/products/Van_Loc.jpg', nameProduct: 'Vạn lộc Rainbow', price: '15'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
