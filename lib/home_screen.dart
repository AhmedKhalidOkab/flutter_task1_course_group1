import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 50, bottom: 60),
          child: Card(
              shadowColor: Colors.white60,
              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      'Sign Up                                                                   ',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Name'),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Email'),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(label: Text('Password')),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                      //color: Colors.black,
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(0, 200, 0, 150)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0)))),
                          onPressed: () {},
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
