import 'package:flutter/material.dart';
import 'widgets/welcome_app_bar.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WelcomeAppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Register',
              style: TextStyle(
                fontSize: 35,
                color: Colors.teal[700],
                fontWeight: FontWeight.bold,
              ),
            ),

            // Email input
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.teal[700],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.teal[700]!, // Màu viền khi được chọn
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),

            // Password input
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.teal[700],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.teal[700]!, // Màu viền mặc định
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.teal[700]!, // Màu viền mặc định
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),

            // Confirm password input
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    color: Colors.teal[700],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.teal[700]!, // Màu viền mặc định
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.teal[700]!, // Màu viền mặc định
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),

            //Button Login
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[700],
                    minimumSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text('REGISTER',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
            ),

            // Already have an account? Sign in
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Already have an account? Sign in',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                      fontSize: 17)),
            )
          ],
        ),
      ),
    );
  }
}
