import 'package:ecommerce_app/controllers/home/homecontrollar.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:ecommerce_app/view/widgets/home/butomsearch_widget.dart';
import 'package:ecommerce_app/view/widgets/home/card_widget.dart';
import 'package:ecommerce_app/view/widgets/home/category_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomecontrollarImp controller = Get.put(HomecontrollarImp());
    return Scaffold(
      backgroundColor: AppColors.homeBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: InkWell(
          child: const Icon(Icons.person_outline_outlined),
          onTap: () {
            controller.GoToprofile();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              controller.GoTomyorder();
            },
            icon: Image.asset('assets/icons/cart.png'),
          ),
        ],
      ),
      body: GetBuilder<HomecontrollarImp>(
        builder: (controller) {
          return ListView(
            children: [
              SizedBox(
                width: Get.width,
                height: 200 - kToolbarHeight,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: Get.width,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      left: 20,
                      right: 20,
                      child: ButomsearchWidget(
                        onpressedsearch: (query) {
                          controller.filterProducts(query);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Top Categories',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    const CategoryList(),
                    const SizedBox(height: 16),
                    controller.statusRequest == StatusRequest.loading
                        ? const Center(child: CircularProgressIndicator())
                        : SizedBox(
                            height: 200,
                            child: Image.asset('assets/images/Soping.png')),
                    Row(
                      children: [
                        const Text('Deals of the Day'),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            controller.GotoPrudact();
                          },
                          child: const Text(
                            'More',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'overpass',
                            ),
                          ),
                        ),
                      ],
                    ),
                    GetBuilder<HomecontrollarImp>(
                      builder: (controller) {
                        if (controller.statusRequest == StatusRequest.loading) {
                          return const Center(
                              child: CircularProgressIndicator());
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
                                productModel: controller.products[index],
                              );
                            },
                            itemCount: controller.products.length,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
