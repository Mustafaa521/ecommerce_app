import 'package:ecommerce_app/core/constant/image_Asset.dart';
import 'package:flutter/material.dart';

class Logoauth extends StatelessWidget {
  const Logoauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAsset.logo,
      width: 150,
      height: 80,
      fit: BoxFit.contain,
    );
  }
}
