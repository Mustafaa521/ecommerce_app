
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  navget() async {
    await Future.delayed(Duration(seconds: 3));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getInt("step") == null) {
      Get.offAllNamed(Approutes.onborning);
    } else if (prefs.getInt("step") == 1) {
      Get.offAllNamed(Approutes.Login);
    } else {
      Get.offAllNamed(Approutes.navgtionbar);
    }
  }

  @override
  void onInit() {
    navget();
    super.onInit();
  }
}
