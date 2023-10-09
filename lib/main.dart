import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temperature/splash/splash_screen.dart';

void main() {
  runApp(const temperature());
}

class temperature extends StatelessWidget {
  const temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      routes: {
        '/': (context) => const splash(),
      },
    );
  }
}
