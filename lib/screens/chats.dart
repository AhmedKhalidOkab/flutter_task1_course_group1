import 'package:f_project/screens/contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 45,
                backgroundImage: Image.asset('assets/images/a1.jpg').image,
              ),
              title: const Text(
                'Ahmed',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('مرحبا بك في الجروب '),
              trailing: const Text('12:00'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 22, 167, 75),
          onPressed: () {
            Get.to(MyContacts());
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (BuildContext context) {
            //   return MyContacts();
            // }));
          },
          child: Icon(Icons.message, color: Colors.white)),
    );
  }
}
