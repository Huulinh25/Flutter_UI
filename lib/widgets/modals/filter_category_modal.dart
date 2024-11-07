import 'package:flutter/material.dart';
import 'package:my_app/widgets/items/category_item.dart';

class CheckoutBottomModal extends StatelessWidget {
  const CheckoutBottomModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 350,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Label
            Text(
              'By Category',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),

            // Filter Buttons
            const SizedBox(height: 20),
            CategoryItem(
              text: 'Drinks',
              onPressed: () {},
            ),

            const SizedBox(height: 10),
            CategoryItem(
              text: 'Foods',
              onPressed: () {},
            ),

            const SizedBox(height: 10),
            CategoryItem(
              text: 'Clothes',
              onPressed: () {},
            ),

            const SizedBox(height: 10),
            CategoryItem(
              text: 'Computers',
              onPressed: () {},
            ),
            

            const SizedBox(height: 30),
            // Apply Button
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.pop(context); // Close the modal
                },
                child: const Text('Apply'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
