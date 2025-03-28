import 'package:ecommerce_app/controllers/Cart/cartcontrollar.dart';
import 'package:flutter/material.dart';
import '../../../core/constant/colors.dart';
import 'butomaddandremove.dart';
import 'package:ecommerce_app/data/models/prudact_model.dart';
import 'package:get/get.dart';

class CustomcartWidget extends StatelessWidget {
  final ProductModel product;

  const CustomcartWidget({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    final QuantityController controller = Get.find();

    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 100,
            child: Image.network(product.image, fit: BoxFit.cover),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: const TextStyle(
                              fontFamily: 'overpass',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.cartItems.remove(product);
                          controller.quantities.remove(product);
                        },
                        child: Container(
                          width: 21,
                          height: 21,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xAD757575), 
                              width: 2, 
                            ),
                          ),
                          child: const Center(
                            child: Icon(Icons.close,
                                color: Color(0xAD757575), size: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    '${product.category.toString()}',
                    style: const TextStyle(
                        fontFamily: 'overpass',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF110F0F)),
                  ),
                  const Spacer(),
                  ButomAddAndRemove(product: product)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}