import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImegWidget extends StatelessWidget {
  final String url;
  const ImegWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 100,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12), 
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12), 
          child: SizedBox(
            width: 150,
            child: CachedNetworkImage(
              imageUrl: url,
              fit: BoxFit.contain, 
            ),
          ),
        ),
      ),
    );
  }
}
