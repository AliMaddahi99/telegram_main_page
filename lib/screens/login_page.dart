import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  bool isEmail = false;

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

              // Email Text Field
              TextField(
                controller: _emailTextController,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  hintText: "Email",
                ),
                onChanged: (text) {
                  setState(() {
                    isEmail = GetUtils.isEmail(text);
                  });
                },
              ),

              const SizedBox(
                height: 10.0,
              ),

              // Password Text Field
              TextField(
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
              ),

              const SizedBox(
                height: 10.0,
              ),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50.0),
                  primary: Theme.of(context).colorScheme.secondary,
                ),
                // onPressed: controller.isEmail.value
                onPressed: isEmail
                    ? () {
                        if (GetUtils.isEmail(_emailTextController.text) &&
                            _emailTextController.text == "ali@gmail.com" &&
                            _passwordTextController.text == "123") {
                          Get.toNamed("/home");
                        } else {
                          Get.snackbar(
                            "WRONG",
                            "Email or Password is not correct!",
                            backgroundColor: Colors.red,
                          );
                        }
                      }
                    : null,
                child: const Text("Login"),
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
