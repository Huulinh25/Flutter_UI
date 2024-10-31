import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(350), // Tăng chiều cao của AppBar
        child: AppBar(
          flexibleSpace: const Image(
            height: 500,
            image: AssetImage('assets/images/welcome.jpeg'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10), // Điều chỉnh khoảng cách giữa ảnh và "Welcome"
          Center(
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Text(
              'Create a new account',
              style: TextStyle(
                fontSize: 16,
                color: Colors.teal[700],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[700],
                minimumSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {
                // Handle login button press
              },
              child: const Text('LOGIN', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[700],
                minimumSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {
                // Handle register button press
              },
              child:
                  const Text('REGISTER', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
