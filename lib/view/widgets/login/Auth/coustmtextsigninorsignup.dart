import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class Coustmtextsigninorsignup extends StatelessWidget {
  const Coustmtextsigninorsignup({super.key, required this.text, required this.text2, this.onTap});
  final String text;
  final String text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        InkWell(
          onTap:onTap,
          child: Text(
            text2,
            style: const TextStyle(
              color: AppColors.primary,
            ),
          ),
        )
      ],
    );
  }
}
