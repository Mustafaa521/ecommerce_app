import 'package:flutter/material.dart';

class Coustmtexttitleauth extends StatelessWidget {
  const Coustmtexttitleauth({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
