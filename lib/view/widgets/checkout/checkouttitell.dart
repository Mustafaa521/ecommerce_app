import 'package:ecommerce_app/controllers/Cart/cartcontrollar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Checkouttitell extends StatelessWidget {
  Checkouttitell({super.key, this.Price});
  final QuantityController controller = Get.put(QuantityController());

  final Price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('${controller.cartItems.length} Items in your cart'),
          ),
          const Spacer(),
          Column(
            children: [
              const Text('TOTAL'),
              Text('Rs.${controller.orderTotal.value.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
        ],
      ),
    );
  }
}
