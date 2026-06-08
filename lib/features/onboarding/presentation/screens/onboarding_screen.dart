import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _page(
            "Send Money",
            "Transfer money instantly",
            Icons.send,
          ),
          _page(
            "Recharge",
            "Mobile recharge anytime",
            Icons.phone_android,
          ),
          _page(
            "Payments",
            "Pay bills securely",
            Icons.payment,
          ),
        ],
      ),
    );
  }

  Widget _page(
      String title,
      String subtitle,
      IconData icon,
      ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size:120),
        const SizedBox(height:20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(subtitle),
      ],
    );
  }
}