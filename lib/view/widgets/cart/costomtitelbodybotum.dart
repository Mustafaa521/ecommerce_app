import 'package:ecommerce_app/view/widgets/cart/custom_line_widget.dart';
import 'package:flutter/material.dart';

class Costomtitelbodybotum extends StatelessWidget {
  const Costomtitelbodybotum({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Summary',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: 20,
        ),
        const Row(
          children: [
            Text('Order Total'),
            Spacer(),
            Text('228.80'),
          ],
        ),
        const Row(
          children: [
            Text('Items Discount'),
            Spacer(),
            Text('228.80'),
          ],
        ),
        const Row(
          children: [
            Text('Coupon Discount'),
            Spacer(),
            Text('228.80'),
          ],
        ),
        const Row(
          children: [
            Text('Shipping'),
            Spacer(),
            Text('228.80'),
          ],
        ),
        const CustomLineWidget(),
        Row(
          children: [
            Text(
              'Total',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Spacer(),
            Text('Rs.185.00', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ],
    );
  }
}
