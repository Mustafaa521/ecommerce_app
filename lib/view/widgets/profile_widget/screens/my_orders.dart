import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/controllers/Cart/cartcontrollar.dart';

class MyOrdersPage extends StatelessWidget {
  final QuantityController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: Obx(() {
        if (controller.cartItems.isEmpty) {
          return const Center(child: Text('No orders yet'));
        } else {
          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: controller.cartItems.length,
            itemBuilder: (context, index) {
              final product = controller.cartItems[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  leading: Image.network(product.image, width: 50, height: 50, fit: BoxFit.cover),
                  title: Text(product.title),
                  subtitle: Text('Quantity: ${controller.quantities[product]}'),
                  trailing: Text('\$${product.price * controller.quantities[product]!}'),
                ),
              );
            },
          );
        }
      }),
    );
  }
}