import 'package:flutter/material.dart';

class ServiceGrid extends StatelessWidget {
  const ServiceGrid({super.key});

  final List<Map<String, dynamic>> services = const [
    {"title": "Send Money", "icon": Icons.send},
    {"title": "Cash Out", "icon": Icons.money},
    {"title": "Payment", "icon": Icons.payment},
    {"title": "Recharge", "icon": Icons.phone_android},
    {"title": "Add Money", "icon": Icons.account_balance},
    {"title": "Transfer", "icon": Icons.swap_horiz},
    {"title": "Savings", "icon": Icons.savings},
    {"title": "More", "icon": Icons.more_horiz},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: services.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (_, index) {
          return Column(
            children: [
              CircleAvatar(
                child: Icon(
                  services[index]['icon'],
                ),
              ),
              const SizedBox(height: 5),
              Text(
                services[index]['title'],
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}