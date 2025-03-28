import 'package:ecommerce_app/controllers/Cart/cartcontrollar.dart';
import 'package:ecommerce_app/controllers/prodacte/prodactetils.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/data/models/prudact_model.dart';
import 'package:ecommerce_app/view/widgets/productdetails/errichoffman.dart';
import 'package:ecommerce_app/view/widgets/productdetails/prodactetils_rating_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productdetails extends GetView<ProdactetilscontrollarImp> {
  final ProductModel productModel;
  const Productdetails(this.productModel, {super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProdactetilscontrollarImp());
    final QuantityController quantityController = Get.find();

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_checkout))
        ],
      ),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(left: 23, right: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                productModel.category,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Container(
                height: 200,
                width: 355,
                // color: Colors.grey,
                child: Image.network(
                  productModel.image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Rs.${productModel.price.toString()}'),
                      // Text('Etiam mollis '),
                    ],
                  ),
                  const SizedBox(
                    height: 0,
                    width: 135,
                  ),
                  IconButton(
                      onPressed: () {
                        quantityController.addToCart(productModel);
                      },
                      icon: const Icon(
                        Icons.add_box_outlined,
                        color: AppColors.primary,
                      )),
                  const Text(
                    'Add to cart',
                    style: TextStyle(color: AppColors.primary),
                  ),
                ],
              ),
              //___________________________________
              const SizedBox(
                height: 7,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Details',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    productModel.description,
                    // 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                ],
              ),

              ProdactetilsRatingSection(
                  count: productModel.rating.count,
                  rate: productModel.rating.rate),
              const Errichoffman(),
            ],
          ),
        ),
      ]),
    );
  }
}