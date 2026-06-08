import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction History"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (_, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Icon(
                index % 2 == 0
                    ? Icons.arrow_upward
                    : Icons.arrow_downward,
              ),
            ),
            title: Text(
              index % 2 == 0
                  ? "Send Money"
                  : "Cash In",
            ),
            subtitle: const Text(
              "10 Jun 2026 • 10:30 AM",
            ),
            trailing: Text(
              index % 2 == 0
                  ? "-৳500"
                  : "+৳1000",
              style: TextStyle(
                color: index % 2 == 0
                    ? Colors.red
                    : Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}