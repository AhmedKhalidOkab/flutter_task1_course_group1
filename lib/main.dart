import 'package:f_project/home_screen.dart';
import 'package:flutter/material.dart';

//lib\home_screen.dart
void main() {
  runApp(App1());
}

class App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Register Page',
      home: Homescreen(),
    );
  }
}
