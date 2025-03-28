import 'package:ecommerce_app/controllers/buttomnavbar.dart/navgation_controllar.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class Prodactetilscontrollar extends GetxController {
  GoToCard();
}

class ProdactetilscontrollarImp extends Prodactetilscontrollar {
  @override
  GoToCard() {
    Get.find<NavgationControllar>().chingIndex(1);
    Get.toNamed(Approutes.navgtionbar);
  }
}
