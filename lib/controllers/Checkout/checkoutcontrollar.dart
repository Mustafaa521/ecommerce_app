import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class Checkoutcontrollar extends GetxController {
  PayNow();
}

class CheckoutcontrollarImp extends Checkoutcontrollar {
  get currentIndex => null;

  @override
  PayNow() {
    Get.toNamed(Approutes.success);
  }

  changeIndex(int index) {}
}
