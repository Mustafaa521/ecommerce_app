import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class Coustmbuttenathe extends StatelessWidget {
  const Coustmbuttenathe(
      {super.key, required this.text, this.onPressed, this.loading = false});
  final String text;
  final void Function()? onPressed;
  final bool? loading;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsets.symmetric(vertical: 15),
        onPressed: loading == true ? null : onPressed,
        color: AppColors.primary,
        textColor: Colors.white,
        child: loading == true ? const CircularProgressIndicator() : Text(text),
      ),
    );
  }
}
