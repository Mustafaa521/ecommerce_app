import 'package:ecommerce_app/data/models/prudact_model.dart';
import 'package:flutter/material.dart';

class BodyBotummTextstarWidget extends StatelessWidget {
  final ProductModel productModel;
  const BodyBotummTextstarWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Rs.${productModel.price}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Spacer(),
        Align(
          // alignment: Alignment.bottomRight,
          child: Container(
            width: 75,
            height: 25,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.yellow[700],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star, color: Colors.white, size: 16),
                const SizedBox(width: 4),
                Text(
                  productModel.rating.count.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
