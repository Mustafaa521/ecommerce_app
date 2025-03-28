import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/controllers/Cart/cartcontrollar.dart';

class Coustomtitell extends StatelessWidget {
  const Coustomtitell({super.key});

  @override
  Widget build(BuildContext context) {
    final QuantityController controller = Get.find();

    return Row(
      children: [
        Obx(() => Text(
              '${controller.cartItems.length} Items in your cart',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
        const Spacer(),
        Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.add,
                size: 24,
                color: Color(0XFF4157FF),
              ),
              onPressed: () {
                controller.GoToProducts();
              },
            ),
            TextButton(
              onPressed: () {
                controller.GoToProducts();
              },
              child: const Text(
                'Add more',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 65, 87, 255)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
