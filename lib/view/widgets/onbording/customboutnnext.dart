import 'package:ecommerce_app/controllers/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customboutnnextonbording extends GetView<OnbordingControllerImp> {
  const Customboutnnextonbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), 
      child: ElevatedButton(
        onPressed: () {
          
          controller.next();
        },
        child: const Text("Next"),
      ),
    );
  }
}