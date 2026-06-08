import 'package:flutter/material.dart';

import '../../../send_money/presentation/screens/send_money_screen.dart';
import '../../../cash_out/presentation/screens/cash_out_screen.dart';
import '../../../payment/presentation/screens/payment_screen.dart';
import '../../../recharge/presentation/screens/recharge_screen.dart';
import '../../../add_money/presentation/screens/add_money_screen.dart';
import '../../../history/presentation/screens/transaction_history_screen.dart';

class ServiceGrid extends StatelessWidget {
  const ServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {
        "title": "Send Money",
        "icon": Icons.send,
        "screen": const SendMoneyScreen(),
      },
      {
        "title": "Cash Out",
        "icon": Icons.money,
        "screen": const CashOutScreen(),
      },
      {
        "title": "Payment",
        "icon": Icons.payment,
        "screen": const PaymentScreen(),
      },
      {
        "title": "Recharge",
        "icon": Icons.phone_android,
        "screen": const RechargeScreen(),
      },
      {
        "title": "Add Money",
        "icon": Icons.account_balance,
        "screen": const AddMoneyScreen(),
      },
      {
        "title": "History",
        "icon": Icons.history,
        "screen": const TransactionHistoryScreen(),
      },
      {
        "title": "Savings",
        "icon": Icons.savings,
        "screen": const TransactionHistoryScreen(),
      },
      {
        "title": "More",
        "icon": Icons.more_horiz,
        "screen": const TransactionHistoryScreen(),
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: services.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => services[index]['screen'],
                ),
              );
            },
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor:
                      const Color(0xFFE2136E),
                  child: Icon(
                    services[index]['icon'],
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  services[index]['title'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}