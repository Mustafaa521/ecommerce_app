import 'package:ecommerce_app/controllers/Cart/cartcontrollar.dart';
import 'package:ecommerce_app/view/widgets/cart/custom_line_widget.dart';
import 'package:ecommerce_app/view/widgets/productdetails/prodact_buttom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/home/card/coustomtitell.dart';
import '../widgets/cart/customcart_widget.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final QuantityController controller = Get.put(QuantityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(),
        title: const Text(
          'Your cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GetBuilder<QuantityController>(
        builder: (_) {
          return Column(
            children: [
              Container(
                height: 30,
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Coustomtitell(),
              ),
              Expanded(
                child: controller.cartItems.isEmpty
                    ? Center(child: Text('Your cart is empty'))
                    : ListView.builder(
                        padding: const EdgeInsets.only(left: 24, right: 24),
                        itemCount: controller.cartItems.length,
                        itemBuilder: (context, index) {
                          final product = controller.cartItems[index];
                          return CustomcartWidget(product: product);
                        },
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //_________________________________
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment Summary',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text('Order Total'),
                            Spacer(),
                            Obx(() => Text(controller.orderTotal.value
                                .toStringAsFixed(2))),
                          ],
                        ),
                        const CustomLineWidget(),
                        Row(
                          children: [
                            Text(
                              'Total',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Spacer(),
                            Obx(() => Text(
                                controller.total.value.toStringAsFixed(2),
                                style:
                                    Theme.of(context).textTheme.headlineSmall)),
                          ],
                        ),
                      ],
                    ),
                    //______________________
                    Prodactbuttom(
                        text: 'Place Order',
                        onPressed: () {
                          controller.GoToCheckout();
                        }),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
