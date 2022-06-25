import 'package:get/get.dart';

class Controller extends GetxController {
  var isDark = false;
  var isEmail = false.obs;

  bool toggleTheme() {
    return isDark = !isDark;
  }

  set isValidEmail(bool inputText) {
    isEmail.value = inputText;
  }
}
