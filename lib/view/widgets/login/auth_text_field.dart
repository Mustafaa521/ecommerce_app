import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final String labelText;
  final bool isPassword;
  final TextEditingController? controller;
  final double? topPadding;
  final double? buttomPadding;
  final void Function(String)? onFieldSubmitted;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  const AuthTextField({
    super.key,
    required this.labelText,
    this.isPassword = false,
    this.controller,
    this.topPadding,
    this.buttomPadding,
    this.onFieldSubmitted,
    this.textInputAction,
    this.validator,
    this.keyboardType,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AuthTextFieldState createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool isPasswordHidden;

  @override
  void initState() {
    super.initState();
    isPasswordHidden = widget.isPassword; // إخفاء النص إذا كان الحقل كلمة مرور
  }

  void togglePasswordVisibility() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.topPadding ?? 20.0,
        bottom: widget.buttomPadding ?? 0.0,
      ),
      child: TextFormField(
        onFieldSubmitted: widget.onFieldSubmitted,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validator,
        style: Theme.of(context).textTheme.bodySmall,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        controller: widget.controller,
        obscureText: widget.isPassword ? isPasswordHidden : false,
        decoration: InputDecoration(
          errorStyle:const TextStyle(color: AppColors.primary),
          labelText: widget.labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: togglePasswordVisibility,
                )
              : null,
        ),
      ),
    );
  }
}
