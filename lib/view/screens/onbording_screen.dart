import 'package:ecommerce_app/view/widgets/onbording/Customdot.dart';
import 'package:ecommerce_app/view/widgets/onbording/coustmslider.dart';
import 'package:ecommerce_app/view/widgets/onbording/coustombutenskib.dart';
import 'package:ecommerce_app/view/widgets/onbording/customboutnnext.dart';
import 'package:flutter/material.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Expanded(flex: 4, child: Coustmslideronbording()),
          Expanded(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Coustombutenskibonbording(),
                Customndotonbording(),
                Customboutnnextonbording()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
