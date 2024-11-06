import 'package:flutter/material.dart';

class QuantitySelectorItem extends StatelessWidget {
  final int quantity;
  final Function() onIncrease;
  final Function() onDecrease;

  const QuantitySelectorItem({
    super.key,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 13,
            backgroundColor: Colors.grey,
            child: IconButton(
              icon: const Icon(Icons.remove, size: 15),
              onPressed: onDecrease,
              padding: EdgeInsets.zero,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "$quantity",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[500],
              ),
            ),
          ),
          CircleAvatar(
            radius: 13,
            backgroundColor: Colors.grey,
            child: IconButton(
              icon: const Icon(Icons.add, size: 15),
              onPressed: onIncrease,
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}
