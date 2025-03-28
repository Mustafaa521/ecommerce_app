import 'package:flutter/material.dart';

class BillingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> bills = [
      {'date': '2023-01-01', 'amount': '\$100.00', 'status': 'Paid'},
      {'date': '2023-02-01', 'amount': '\$150.00', 'status': 'Unpaid'},
      {'date': '2023-03-01', 'amount': '\$200.00', 'status': 'Paid'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Billing'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: bills.length,
        itemBuilder: (context, index) {
          final bill = bills[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: Text('Date: ${bill['date']}'),
              subtitle: Text('Amount: ${bill['amount']}'),
              trailing: Text(
                bill['status']!,
                style: TextStyle(
                  color: bill['status'] == 'Paid' ? Colors.green : Colors.red,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}