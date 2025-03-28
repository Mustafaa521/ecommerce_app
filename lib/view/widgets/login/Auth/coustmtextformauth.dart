import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/core/utils/functions/validators.dart';
import 'package:flutter/material.dart';

class Coustmtextformauth extends StatelessWidget {
  const Coustmtextformauth(
      {super.key,
      required this.hinttext,
      required this.icondata,
      this.labltext,
      this.type,
      this.controller});

  final String hinttext;
  final String? labltext;
  final IconData icondata;
  final ValidatorType? type;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.always,
        validator: validator1(type),
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 9, horizontal: 30),
            label: labltext != null
                ? Container(
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    child: Text(labltext!))
                : null,
            suffixIcon: Icon(icondata),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusColor: AppColors.primary,
            errorStyle: const TextStyle(color: Colors.red, fontSize: 16)),
      ),
    );
  }
}
