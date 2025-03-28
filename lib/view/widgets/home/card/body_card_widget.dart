import 'package:ecommerce_app/data/models/prudact_model.dart';
import 'package:ecommerce_app/view/widgets/home/card/body_Botumm_text&star_widget.dart';
import 'package:flutter/material.dart';

class BodyCardWidget extends StatelessWidget {
  final ProductModel productModel;
  const BodyCardWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            productModel.title.substring(0, 10),
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            productModel.category,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 4), 
          BodyBotummTextstarWidget(
            productModel: productModel,
          ),
        ],
      ),
    );
  }
}
