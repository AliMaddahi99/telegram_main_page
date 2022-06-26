import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:telegram_main_page/controllers/controller.dart';

import 'package:telegram_main_page/screens/home_page.dart';
import 'package:telegram_main_page/screens/login_page.dart';

import 'package:telegram_main_page/styles/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      initialRoute: "/login",
      getPages: [
        GetPage(
          name: "/login",
          page: () => const LoginPage(),
        ),
        GetPage(
          name: "/home",
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
