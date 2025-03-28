import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class Prodactbuttom extends StatelessWidget {
  const Prodactbuttom({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 15),
        onPressed: onPressed,
        color: AppColors.primary,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
