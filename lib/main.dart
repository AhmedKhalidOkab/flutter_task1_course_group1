import 'package:f_project/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color primaryClr = const Color(0xFF00c569);

void main() {
  runApp( App1());
}

class App1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: primaryClr,
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: primaryClr),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: primaryClr),
            ),
          ),
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.transparent))),
      debugShowCheckedModeBanner: false,
      title: 'Register App',
      home: HomeScreen(),
    );
  }
}
