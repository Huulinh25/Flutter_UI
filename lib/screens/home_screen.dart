import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/product/product_bloc.dart';
import 'package:my_app/bloc/product/product_event.dart';
import 'package:my_app/bloc/product/product_state.dart';
import 'package:my_app/widgets/app_bar/header_app_bar.dart';
import 'package:my_app/widgets/home/product_grid.dart';
import 'package:my_app/widgets/items/search_bar_filter_item.dart';

class HomeScreen extends StatelessWidget {
  final String? loginMessage;

  const HomeScreen({super.key, this.loginMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderAppBar(),
      body: BlocProvider(
        create: (BuildContext context) => ProductBloc()..add(FetchProductsEvent()),
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            print('aaaaaa $state');
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductError) {
              return Center(child: Text('Error: ${state.message}'));
            } else if (state is ProductLoaded) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    if (loginMessage != null)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          loginMessage!,
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    const SearchBarFilterItem(),
                    ProductGrid(products: state.products),
                  ],
                ),
              );
            }
            return const Center(child: Text('No products found'));
          },
        ),
      ),
    );
  }
}
