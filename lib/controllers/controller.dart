import 'package:get/get.dart';

class Controller extends GetxController {
  var isDark = false;

  bool toggleTheme() {
    return isDark = !isDark;
  }
}
