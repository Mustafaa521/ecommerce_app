import 'package:flutter/material.dart';

class ButomsearchWidget extends StatelessWidget {
  final void Function(String)? onpressedsearch;
  const ButomsearchWidget({super.key, this.onpressedsearch});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: () {
              if (onpressedsearch != null) {
                onpressedsearch!(searchController.text);
              }
            },
            icon: const Icon(Icons.search),
          ),
          hintText: 'search',
          hintStyle: const TextStyle(fontSize: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
