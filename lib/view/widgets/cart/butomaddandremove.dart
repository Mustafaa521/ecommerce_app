import 'package:ecommerce_app/controllers/Cart/cartcontrollar.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/data/models/prudact_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButomAddAndRemove extends StatelessWidget {
  final ProductModel product;

  ButomAddAndRemove({required this.product, super.key});

  final QuantityController controller = Get.put(QuantityController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Rs.${product.price.toString()}',
          style: TextStyle(
              fontFamily: 'overpass',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary),
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFE3F2FD), // لون الخلفية الفاتح
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // زر الناقص
              _buildButton(
                icon: Icons.remove,
                color: Color.fromARGB(255, 192, 216, 233),
                color2: Color(0xB42937CD),
                onPressed: () => controller.decrement(product),
              ),
              const SizedBox(width: 15),
              // العدد متغير
              Obx(() => Text(
                    "${controller.quantities[product] ?? 0}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(width: 15),
              // زر الزائد
              _buildButton(
                icon: Icons.add,
                color: Colors.blue.shade300,
                color2: Colors.white,
                onPressed: () => controller.increment(product),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton(
      {required IconData icon,
      required Color color,
      required Color color2,
      required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color2),
      ),
    );
  }
}
