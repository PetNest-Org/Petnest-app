import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Use clear, consistent folder structures for imports
import 'screens/home_screen.dart';
import 'package:demopetnest/VetBooking.dart'; // Suggested rename for file consistency

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PetNest', // Use a descriptive title

      // Centralized Theme Definition
      theme: _buildTheme(),

      // Standardize on one entry point
      home: const HomeScreen(),
    );
  }

  ThemeData _buildTheme() {
    final baseTheme = ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.blue, // Optional: provides a unified color palette
      scaffoldBackgroundColor: Colors.grey.shade100,
    );

    return baseTheme.copyWith(
      // Apply Google Fonts to the Material 3 text theme
      textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme),
    );
  }
}
