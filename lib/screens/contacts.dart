import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {return MyContacts();}));
                  //Navigator.pop(context);
                  ElevatedButton(
                      onPressed: () => Get.back(), child: const Text('Back')),
                  Container(
                    child: Text('Samy'),
                  ),
                ],
              );
            }),
            itemCount: 10),
      ),
    );
  }
}
