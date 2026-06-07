import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: PageView(
        children: [
          _bannerCard(
            "Special Offer",
            "Get 20% Cashback",
            Icons.local_offer,
          ),
          _bannerCard(
            "Mobile Recharge",
            "Earn Reward Points",
            Icons.phone_android,
          ),
          _bannerCard(
            "Pay Bill",
            "Win Exciting Gifts",
            Icons.receipt_long,
          ),
        ],
      ),
    );
  }

  Widget _bannerCard(
      String title,
      String subtitle,
      IconData icon,
      ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            icon,
            size: 60,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}