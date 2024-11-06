import 'package:flutter/material.dart';

class FixedBottomBlock extends StatelessWidget {
  const FixedBottomBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fixed Bottom Block")),
      body: Stack(
        children: [
          // Your main content here
          ListView(
            children: const [
              ListTile(title: Text("Item 1")),
              ListTile(title: Text("Item 2")),
              ListTile(title: Text("Item 3")),
              ListTile(title: Text("Item 4")),
            ],
          ),
          
          // Fixed block at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.pink, // Background color
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'Fixed Block at the Bottom',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FixedBottomBlock(),
  ));
}
