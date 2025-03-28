import 'package:get/get.dart';
class PasswordController extends GetxController {
  var isPasswordHidden = true.obs; // متغير ملاحظ (Observable)

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
}