import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CallsScreen extends StatelessWidget {
  CallsScreen({super.key});
  List<IconData> icons = [
    Icons.call_received,
    Icons.call_made,
    Icons.call_missed,
  ];
  List<Color> color = [
    Colors.grey,
    Colors.green,
    Colors.red,
  ];

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
                  'Mo Khalid',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      icons[index % 3],
                      color: color[index % 3],
                    ),
                    const Text(' 3 minute ago'),
                  ],
                ),
                trailing: const Icon(Icons.call, color: Colors.green),
              );
            }));
  }
}
