import 'package:flutter/material.dart';
import 'package:my_app/widgets/input/search_input.dart';
import 'package:my_app/widgets/modals/filter_category_modal.dart';

class SearchBarFilterItem extends StatelessWidget {
  const SearchBarFilterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            icon: const Icon(Icons.filter_list, size: 45),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return const CheckoutBottomModal();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}