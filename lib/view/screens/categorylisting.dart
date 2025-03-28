import 'package:ecommerce_app/controllers/category/category_controller.dart';
import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:ecommerce_app/view/widgets/home/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categorylisting extends StatelessWidget {
  const Categorylisting({super.key});
  @override 
  Widget build(BuildContext context) {
    Get.put(CategoryControler());
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(),
          title: const Text(
            'Diabetes Care',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: GetBuilder<CategoryControler>(
          builder: (c) {
            return c.statusRequest == StatusRequest.loading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding:const EdgeInsets.only(left: 18, bottom: 20),
                          child: Text('Prodacts',
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                        ),
                      ),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                            childAspectRatio: 1,
                          ),
                          itemCount: c.products.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CardWidget(
                              productModel: c.products[index],
                            );
                          },
                        ),
                      ),
                    ],
                  );
          },
          init: CategoryControler(),
        ));
  }
}
