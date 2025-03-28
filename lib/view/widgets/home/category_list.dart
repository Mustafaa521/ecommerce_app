import 'package:ecommerce_app/controllers/home/homecontrollar.dart';
import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:ecommerce_app/view/widgets/home/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomecontrollarImp>(builder: (controller) {
      return Container(
        padding: const EdgeInsets.only(left: 24),
        height: 120,
        width: Get.width,
        child: controller.statusRequest == StatusRequest.loading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryWidget(
                      name: controller.categories[index].name);
                },itemCount: controller.categories.length,
              ),
      );
    });
  }
}
