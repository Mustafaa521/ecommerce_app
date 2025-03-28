import 'package:ecommerce_app/controllers/onbording_controller.dart';
import 'package:ecommerce_app/data/data_sources/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Coustmslideronbording extends GetView<OnbordingControllerImp> {
  const Coustmslideronbording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingControllerImp());
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) => {controller.onchangpar(val)},
      itemCount: onbordinglist.length,
      itemBuilder: (BuildContext context, int i) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(onbordinglist[i].image!, width: 300, height: 300),
          const SizedBox(
            height: 30,
          ),
          Text(onbordinglist[i].titel!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(
            height: 10,
          ),
          Text(onbordinglist[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium),
          const Spacer(),
        ],
      ),
    );
  }
}
