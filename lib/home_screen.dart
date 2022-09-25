import 'package:f_project/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  GlobalKey<FormState> formKey = GlobalKey();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Sign Up',
                          style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        buildTextFormField('Name', nameController),
                        const SizedBox(
                          height: 25,
                        ),
                        buildTextFormField('Email', emailController),
                        const SizedBox(
                          height: 25,
                        ),
                        buildTextFormField('Password', passwordController, isObscureText: true),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            formKey.currentState!.validate();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                                color: primaryClr,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(color: Colors.white, fontSize: 19),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }

  TextFormField buildTextFormField(txt, controller, {bool? isObscureText}) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText ?? false,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      validator: (value) {
        if (value!.isEmpty) {
          return 'it can\'t be null';
        }
      },
      decoration: InputDecoration(
        label: Text(
          '$txt',
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
