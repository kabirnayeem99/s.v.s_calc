import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff1a1a1a),
        accentColor: Colors.purpleAccent,
        scaffoldBackgroundColor: Color(0xff212121),
      ),
      home: InputPage(),
    );
  }
}
