import 'package:ecommerce_app/controllers/home/homecontrollar.dart';
import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:ecommerce_app/view/widgets/home/butomsearch_widget.dart';
import 'package:ecommerce_app/view/widgets/home/card_widget.dart';
import 'package:ecommerce_app/view/widgets/home/category_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Prudacts extends StatelessWidget {
  const Prudacts({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomecontrollarImp());
    return Scaffold(
      body: GetBuilder<HomecontrollarImp>(
        builder: (controller) => ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Text('All Products',
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: ButomsearchWidget(
                onpressedsearch: (query) {
                  controller.filterProducts(query);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CategoryList(),
                  GetBuilder<HomecontrollarImp>(
                    builder: (controller) {
                      if (controller.statusRequest == StatusRequest.loading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return CardWidget(
                                productModel:
                                    controller.filteredProducts[index]);
                          },
                          itemCount: controller.filteredProducts.length,
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
