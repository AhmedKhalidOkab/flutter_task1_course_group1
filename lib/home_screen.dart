import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Card(
              shadowColor: Colors.white54,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        label: Text('Full Name'),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        label: Text('E-mail'),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off),
                          icon: Icon(Icons.key_sharp),
                          label: Text('Password')),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off),
                        icon: Icon(Icons.key_sharp),
                        label: Text('confirm Password'),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                          onPressed: () {},
                          child: const Text(
                            'Register ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Aleardy Register ?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        TextButton(onPressed: () {}, child: Text('Login'))
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
