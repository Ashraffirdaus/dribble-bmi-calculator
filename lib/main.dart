import 'package:dribble_bmi_calculator/calculator_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

 

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0f1335),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Color(0xFF13153b)

        )
      ),
      debugShowCheckedModeBanner: false,
      home:  const CalculatorPage(),
    );
  }
}