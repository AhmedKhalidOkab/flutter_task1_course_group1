import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var mytext = "Blue";
  var color15 = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color15,
        title: Text(mytext),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      color15 = Colors.blue;
                      mytext = "Blue";
                    });
                  },
                  child: Text('Blue')),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.red,
              width: 150,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      color15 = Colors.red;
                      mytext = "Red";
                    });
                  },
                  child: Text(
                    'Red',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            color15 = Colors.green;
            mytext = 'Green';
          });
        },
        child: const Text('click'),
      ),
    );
  }
}
