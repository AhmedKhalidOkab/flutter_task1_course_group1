import 'package:f_project/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

//lib\home_screen.dart
void main() {
  runApp(App1());
}

class App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Register App',
      home: HomePage(),
    );
  }
}
// void main() {
//   runApp(myapp1());
// }

// //widgetstress
// //title
// //text()
// class myapp1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Hello World!',
//       home: HomeScreen(),
//     );
//   }
// }
// // }

// //const
// class Homescreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             centerTitle: true,
//             title: const Text(
//               'App Bar',
//               style: TextStyle(color: Colors.white),
//             ),
//             backgroundColor: Colors.red,
//             elevation: 0,
//             actions: const [
//               Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//             ],
//             leading: const Icon(Icons.menu)),
//         body: Center(
//           child: Container(
//             decoration: const BoxDecoration(
//               // color: Colors.cyan,
//               borderRadius: BorderRadius.all(Radius.circular(50)),
//             ),
//             margin: const EdgeInsets.all(10),
//             padding: const EdgeInsets.only(left: 50),
//             height: 250,
//             width: double.infinity,
//             child: Row(
//               children: [
//                 Container(
//                     decoration: const BoxDecoration(
//                       color: Colors.amber,
//                       borderRadius:
//                           BorderRadius.only(bottomLeft: Radius.circular(15)),
//                     ),
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.only(left: 50),
//                     child: const Text(
//                       'Hello world!',
//                       style: TextStyle(color: Colors.red),
//                     )),
//                 Container(
//                     width: 150,
//                     height: 100,
//                     decoration: const BoxDecoration(
//                       // color: Colors.red,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(15),
//                           bottomLeft: Radius.circular(15)),
//                     ),
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.only(left: 50),
//                     child: const Text(
//                       'Hello world! ali ',
//                       style: TextStyle(
//                         color: Colors.red,
//                         // backgroundColor: Colors.black,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,

//                         shadows: [
//                           Shadow(color: Colors.black, offset: Offset(5, 5)),
//                         ],
//                       ),
//                     )),
//               ],
//             ),
//           ),
//         ));
//   }
// }
// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //         title: 'Flutter Demo',
// //         theme: ThemeData(
// //           primarySwatch: Colors.blue,
// //         ),
// //         home: Center(child: Text('Hello Ahmed')));
// //   }
// // }