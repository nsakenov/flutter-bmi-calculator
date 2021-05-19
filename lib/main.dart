import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0B0E23), //add 0xff in front of RGB
        scaffoldBackgroundColor: Color(0xff0B0E23),
      ),
      home: InputPage(),
    );
  }
}
