import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          // ICON
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          // TITLE TEXT
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          surface: const Color.fromARGB(250, 253, 250, 250),
          primary: Colors.teal[700],
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(300, 50),
            backgroundColor: Colors.teal[700],
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        textTheme: TextTheme(
            labelLarge: TextStyle(
              fontSize: 50,
              color: Colors.teal[700],
              fontWeight: FontWeight.bold,
            ),
            labelMedium: TextStyle(
              fontSize: 35,
              color: Colors.teal[700],
              fontWeight: FontWeight.bold,
            ),
            labelSmall: TextStyle(
              fontSize: 17,
              color: Colors.teal[700],
              fontWeight: FontWeight.bold,
            )),
      ),
      home: const WelcomePage(),
    );
  }
}
