
import 'package:ecommerce_app/view/widgets/productdetails/prodact_buttom.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 142),
            child: Container(
              width: 245,
              height: 200,
              child: Image.asset(
                'assets/images/succes.png',
              ),
            ),
          ),
          SizedBox(
            height: 56,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                Text('Thank you'),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Your Order will be delivered with invoice \n #9ds69hs. You can track the delivery in the \n order section.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
            child: Prodactbuttom(
              text: 'Continue Order',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
