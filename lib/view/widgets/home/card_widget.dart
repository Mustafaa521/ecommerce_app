import 'package:ecommerce_app/data/models/prudact_model.dart';
import 'package:ecommerce_app/view/screens/productdetails.dart';
import 'package:ecommerce_app/view/widgets/home/card/body_card_widget.dart';
import 'package:ecommerce_app/view/widgets/home/card/imeg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardWidget extends StatelessWidget {
  final ProductModel productModel;
  const CardWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => Productdetails(productModel));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, left: 10),
        width: 160,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 2,
              spreadRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 3,
            ),
            ImegWidget(
              url: productModel.image,
            ),
            const SizedBox(
              height: 6,
            ),
            BodyCardWidget(
              productModel: productModel,
            ),
          ],
        ),
      ),
    );
  }
}
