
import 'package:ecommerce_app/view/widgets/checkout/checkoutpaymentInfo.dart';
import 'package:ecommerce_app/view/widgets/checkout/checkoutpypal.dart';
import 'package:ecommerce_app/view/widgets/checkout/checkouttitell.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key, });
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(),
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 29, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkouttitell(),
            const SizedBox(
              height: 6,
            ),
            const Checkoutpaymentinfo(),
            const Checkoutpypal(),
          ],
        ),
      ),
    );
  }
}
