import 'package:bkash_app/features/home/presentation/widgets/banar_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/balance_card.dart';
import '../widgets/service_grid.dart';
import '../widgets/transaction_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  Widget getCurrentPage() {
    switch (currentIndex) {
      case 0:
        return SingleChildScrollView(
          child: Column(
            children: const [
              HomeAppBar(),
              SizedBox(height: 15),

              BalanceCard(),
              SizedBox(height: 20),

              ServiceGrid(),
              SizedBox(height: 20),

              BannerSlider(),
              SizedBox(height: 20),

              TransactionSection(),

              SizedBox(height: 20),
            ],
          ),
        );

      case 1:
        return const Center(
          child: Text(
            "Services Page",
            style: TextStyle(fontSize: 24),
          ),
        );

      case 2:
        return const Center(
          child: Text(
            "Inbox Page",
            style: TextStyle(fontSize: 24),
          ),
        );

      case 3:
        return const Center(
          child: Text(
            "Profile Page",
            style: TextStyle(fontSize: 24),
          ),
        );

      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          currentIndex == 0
              ? const Color(0xFFF5F5F5)
              : Colors.white,

      body: SafeArea(
        child: getCurrentPage(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        backgroundColor: Colors.white,

        selectedItemColor:
            const Color(0xFFE2136E),

        unselectedItemColor: Colors.grey,

        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}