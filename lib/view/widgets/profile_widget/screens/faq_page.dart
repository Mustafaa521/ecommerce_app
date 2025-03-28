import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  final List<Map<String, String>> faqs = [
    {
      'question': 'What is Nilkanth Medical Store?',
      'answer': 'Nilkanth Medical Store is an online platform for purchasing medical supplies and pharmaceuticals.'
    },
    {
      'question': 'How can I place an order?',
      'answer': 'You can place an order by browsing our products, adding them to your cart, and proceeding to checkout.'
    },
    {
      'question': 'What payment methods are accepted?',
      'answer': 'We accept various payment methods including credit cards, debit cards, and online banking.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          final faq = faqs[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ExpansionTile(
              title: Text(faq['question']!),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(faq['answer']!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}