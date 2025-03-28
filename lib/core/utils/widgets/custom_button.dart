import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 final String text;
 final void Function()? onPressed;

  const CustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      height: 45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(56),
      ),
      child:Text(text),
    );
  }
}
