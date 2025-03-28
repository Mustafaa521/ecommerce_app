import 'package:ecommerce_app/controllers/Checkout/checkoutcontrollar.dart';
import 'package:ecommerce_app/view/widgets/productdetails/prodact_buttom.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkoutpypal extends GetView<CheckoutcontrollarImp> {
  const Checkoutpypal({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(CheckoutcontrollarImp());
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Payment method'),
          Container(
            padding: const EdgeInsets.only(
              left: 7,
            ),
            width: 324,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                    width: 1, color: const Color.fromARGB(90, 0, 0, 0))),
            child: Row(
              children: [
                Container(
                  width: 42,
                  height: 38.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(94, 0, 0, 0),
                      )),
                  child: Image.asset(
                    'assets/images/imegpypal.png',
                    width: 34,
                    height: 24,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Cash on Delivery'),
                ),
                const Spacer(),
                const Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Icon(Icons.circle_outlined),
                ),
              ],
            ),
          ),
          Prodactbuttom(
            text: 'Pay Now ',
            onPressed: () {
              controller.PayNow();
            },
          )
        ],
      ),
      //
    );
  }
}
