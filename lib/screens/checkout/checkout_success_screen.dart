import 'package:flutter/material.dart';
import 'package:my_app/screens/home/home_screen.dart';
import 'package:my_app/widgets/app_bar/header_app_bar.dart';
import 'package:my_app/widgets/button/confirm_button.dart';

class CheckouSuccesstScreen extends StatelessWidget {
  const CheckouSuccesstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderAppBar(
        title: 'Checkout',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Success icon
            Image.network(
              'https://www.pngrepo.com/png/331281/180/adguard.png',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),
            const Text(
              'Successful',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              'Congratulations! Your order has been created.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 10),
            ConfirmButton(
              nameButton: 'Back',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 10),
            ConfirmButton(
              backgroundColor: Colors.white,
              textColor: Colors.blue,
              nameButton: 'Print receipt',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
