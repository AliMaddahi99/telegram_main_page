import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.login_rounded,
                size: 54.0,
              ),

              const SizedBox(
                height: 50.0,
              ),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Email TextField
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        controller: _emailTextController,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          hintText: "Email",
                        ),
                        validator: (value) {
                          if (!GetUtils.isEmail(value!)) {
                            return "Please enter your email";
                          }
                          if (value != "ali@gmail.com") {
                            return "Email is not correct";
                          }
                          return null;
                        },
                      ),
                    ),

                    // Password TextField
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        controller: _passwordTextController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          }
                          if (value != "123") {
                            return "Password is not correct";
                          }
                          return null;
                        },
                      ),
                    ),

                    // Login Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50.0),
                        primary: Theme.of(context).colorScheme.secondary,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Get.toNamed("/home");
                        }
                      },
                      child: const Text("Login"),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30.0,
              ),

              // Sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "First time? ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
