import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            }));
  }
}
