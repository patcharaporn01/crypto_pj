import 'package:flutter/material.dart';
import 'pages/exhange_rate_page.dart';
import 'pages/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF007468),   // Primary Color
        //accentColor: Color(0xFFFFCA28),     // Accent Color
        scaffoldBackgroundColor: Colors.blueGrey,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
          ),
          // Add more text styles as needed
        ),
        snackBarTheme: const SnackBarThemeData(
          actionTextColor: Color(0xFFFFCA28),
        ),
        // ... other theme settings
      ),
      home: LoginPage(),
    );
  }
}

class Palette {
  static const MaterialColor colorTheme = MaterialColor(
    0xFFE91E63, // Primary color shade of pink
    <int, Color>{
      50: Color(0xFFFCE4EC), //10%
      100: Color(0xFFF8BBD0), //20%
      200: Color(0xFFF48FB1), //30%
      300: Color(0xFFF06292), //40%
      400: Color(0xFFEC407A), //50%
      500: Color(0xFFE91E63), //60%
      600: Color(0xFFD81B60), //70%
      700: Color(0xFFC2185B), //80%
      800: Color(0xFFAD1457), //90%
      900: Color(0xFF880E4F), //100%
    },
  );
}
