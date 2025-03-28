import 'package:flutter/material.dart';

class CustomLineWidget extends StatelessWidget {
  const CustomLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 1,
        color: const Color.fromARGB(22, 0, 0, 0),
      ),
    );
  }
}
