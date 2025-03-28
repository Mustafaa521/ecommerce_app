import 'package:get/get.dart';

class NavgationControllar extends GetxController {
  var selectedIndex = 0.obs;

  void chingIndex(int index) {
    selectedIndex.value = index;
  }
}
