import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:ecommerce_app/data/data_sources/remote/login_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginController extends GetxController {
  void login();
  // void goToSignUp();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  void resetFormKey() {
    formKey = GlobalKey<FormState>(); // ✅ إنشاء مفتاح جديد عند الحاجة
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void login() async {
    if (formKey.currentState?.validate() ?? false) {
      LoginData loginData = LoginData();
      statusRequest = StatusRequest.loading;
      update();
      final response = await loginData.post(
          emailController.text.toString(), passwordController.text.toString());
      if (response is Map) {
        statusRequest = StatusRequest.success;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt("step", 2);
        Get.offAllNamed(Approutes.navgtionbar);
      } else if (response is StatusRequest) {
        if (response == StatusRequest.failure) {
          Get.snackbar('Error', 'incorrect username or password');
          if (response == StatusRequest.unknown) {
            Get.snackbar('Unknown', 'Server error');
          }
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      Get.snackbar('enter correct fields',
          'username lenght must be >3 \n password length must be > 8');
    }
  }
}
