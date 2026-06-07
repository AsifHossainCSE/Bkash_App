import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [

          const Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Transactions",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("View All"),
            ],
          ),

          const SizedBox(height: 10),

          ...List.generate(
            5,
                (index) => Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor:
                  Colors.pink.shade100,
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.pink,
                  ),
                ),
                title:
                const Text("Send Money"),
                subtitle: Text(
                  "Today ${index + 1}:30 PM",
                ),
                trailing: const Text(
                  "-৳500",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}