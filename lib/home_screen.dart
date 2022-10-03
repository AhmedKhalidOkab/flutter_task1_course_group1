import 'dart:ui';

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var text = "blue";
  var colour = Colors.blue;
  var colour2 = Colors.red;
  var colour3 = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$text  app bar'),
        backgroundColor: colour,
      ),
      body: Center(
          child: Container(
        width: 250,
        height: 40,
        color: Colors.black,
        child: Row(
          children: [
            Container(
              color: colour,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      colour = Colors.red;

                      text = 'Red';
                    });
                  },
                  child: const Text(
                    'Red',
                    style: TextStyle(
                        color: Color.fromARGB(255, 248, 12, 8), fontSize: 20),
                  )),
            ),
            SizedBox(
                width: 20,
                child: Container(
                  color: Colors.white,
                )),
            TextButton(
                onPressed: () {
                  setState(() {
                    colour = Colors.red;
                    colour3 = Colors.red;
                  });
                },
                child: const Text(
                  "   change both",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ))
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            colour = Colors.blue;
            text = 'Blue';
          });
        },
        backgroundColor: Colors.blue,
        child: const Text("back"),
      ),
    );
  }
}
