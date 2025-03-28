import 'package:ecommerce_app/controllers/prodacte/prodactetils.dart';
import 'package:ecommerce_app/view/widgets/productdetails/prodact_buttom.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Errichoffman extends GetView<ProdactetilscontrollarImp> {
  const Errichoffman({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProdactetilscontrollarImp());
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(children: [
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 13),
                Text(
                  '4.4',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 4),
              ],
            ),
            SizedBox(
              width: 220,
            ),
            Text('05- oct 2020'),
          ]),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Erric Hoffman',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas ',
          ),
          Prodactbuttom(
            text: 'Go To Card',
            onPressed: () {
              controller.GoToCard();
            },
          ),
        ],
      ),
    );
  }
}
