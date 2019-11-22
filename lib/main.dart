import 'package:flutter/material.dart';
import './screens/HomeScreen.dart';

void main() => runApp(CodingChallenge());

class CodingChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding Challenge',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}