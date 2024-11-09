import 'package:flutter/material.dart';
import 'package:my_app/model/product_model.dart';
import 'package:my_app/network/network_request.dart';
import 'package:my_app/widgets/app_bar/header_app_bar.dart';
import 'package:my_app/widgets/home/product_grid.dart';
import 'package:my_app/widgets/items/search_bar_filter_item.dart';

class HomeScreen extends StatefulWidget {
  final String? loginMessage;

  const HomeScreen({super.key, this.loginMessage});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<ProductModel>> _futureProducts;

  @override
  void initState() {
    super.initState();
    _futureProducts = NetWorkRequest.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderAppBar(),
      body: FutureBuilder<List<ProductModel>>(
        future: _futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No products found'));
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  if (widget.loginMessage != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.loginMessage!,
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  const SearchBarFilterItem(),
                  ProductGrid(products: snapshot.data!),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
