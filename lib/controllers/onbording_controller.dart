import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/data/data_sources/static/static.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class OnbordingController extends GetxController {
  next();
  onchangpar(int index);
  skib();
}

class OnbordingControllerImp extends OnbordingController {
  late PageController pageController;

  int curentpag = 0;

  @override
  next()async {
    curentpag++;
    if (curentpag > onbordinglist.length - 1) {
SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt("step", 1);
      Get.offAllNamed(Approutes.Login);
    } else {
      pageController.animateToPage(curentpag,
          duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onchangpar(int index) {
    curentpag = index;
    update();
  }

  @override
  skib()async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt("step", 1);
    Get.offAllNamed(Approutes.Login);
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}