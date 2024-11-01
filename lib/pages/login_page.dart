import 'package:flutter/material.dart';
import 'widgets/welcome_app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WelcomeAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.teal[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Email input
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      hintText: 'Email',
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
                // Password input
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                // Forget password
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.teal[700]
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
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)
                    )
                  ),
                ),
                // Don't have account?
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Don't have an account? Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                      fontSize: 17
                      )
                  ),
                )
              ],
              
            ),
          ),
        ],
      ),
    );
  }
}
