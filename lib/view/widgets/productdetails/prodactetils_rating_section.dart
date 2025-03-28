import 'package:flutter/material.dart';

class ProdactetilsRatingSection extends StatelessWidget {
  final int count;
  final double rate;
  const ProdactetilsRatingSection({super.key, required this.count, required this.rate} );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                   rate.toString(),
                    style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.star, color: Colors.amber, size: 32),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                '$count Ratings',
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
