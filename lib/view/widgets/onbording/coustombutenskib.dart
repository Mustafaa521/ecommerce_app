import 'package:ecommerce_app/controllers/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Coustombutenskibonbording extends GetView<OnbordingControllerImp> {
  const Coustombutenskibonbording({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        controller.skib();
      },
      child: const Text("Skip"),
    );
  }
}
