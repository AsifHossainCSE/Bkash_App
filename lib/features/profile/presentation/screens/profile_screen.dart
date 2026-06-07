import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: Column(
        children: [

          const SizedBox(height: 20),

          const CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "MD. ASIF HOSSAIN",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Text("017XXXXXXXX"),

          const SizedBox(height: 30),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Account Information"),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.history),
            title: const Text("Transaction History"),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}