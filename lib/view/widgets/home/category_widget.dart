import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/view/screens/categorylisting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  final String name;
  const CategoryWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const Categorylisting(),
            arguments: {'categoryName': name});
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(5),
        height: 120,
        width: 78,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: AppColors.borderColor,
              blurRadius: 2,
              offset: Offset(2, 2),
            )
          ],
          color: AppColors.background,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: 70,
              child: Text(
                name,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
