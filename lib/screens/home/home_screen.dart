import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/main.dart';
import 'package:my_app/widgets/app_bar/header_app_bar.dart';
import 'package:my_app/widgets/home/product_grid.dart';
import 'package:my_app/widgets/items/search_bar_filter_item.dart';

import '../../cubit/product/product_selection_cubit.dart';
import '../../widgets/modals/selected_products_modal.dart';
import 'bloc/product_cubit.dart';
import 'bloc/product_state.dart';

class HomeScreen extends StatelessWidget {
  final String? loginMessage;

  const HomeScreen({super.key, this.loginMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderAppBar(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<ProductCubit>()..fetchProducts()),
          BlocProvider(create: (context) => ProductSelectionCubit()),
        ],
        child: BlocConsumer<ProductCubit, ProductState>(
          listener: (context, state) {
            if (state.message?.isNotEmpty ?? false) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: ${state.message}')),
              );
            }
          },
          builder: (context, state) {
            if (state.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.products != null) {
              return Stack(
                children: [
                  SingleChildScrollView(
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
                        const SizedBox(height: 10),
                        ProductGrid(products: state.products ?? []),
                      ],
                    ),
                  ),
                  const SelectedProductsModal(),
                ],
              );
            }
            return const Center(child: Text('No products found'));
          },
        ),
      ),
    );
  }
}
