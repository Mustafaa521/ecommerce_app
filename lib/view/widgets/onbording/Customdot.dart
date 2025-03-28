import 'package:ecommerce_app/controllers/onbording_controller.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/data/data_sources/static/static.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customndotonbording extends StatelessWidget {
  const Customndotonbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GetBuilder<OnbordingControllerImp>(

      builder: (Controller) => Row(
        children: [
          ...List.generate(
            onbordinglist.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.all(5),
              duration: const Duration(milliseconds: 900),
              width: Controller.curentpag == index ? 20 : 5,
              height: 6,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    ));
  }
}
