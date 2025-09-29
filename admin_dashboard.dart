import 'package:flutter/material.dart';
import 'admin_jobs_screen.dart';
import 'admin_chats_screen.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              title: const Text("Manage Users"),
              subtitle: const Text("Approve/verify labours & contractors"),
              trailing: const Icon(Icons.verified_user),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Payments & Escrow"),
              subtitle: const Text("Track 7% commission & payouts"),
              trailing: const Icon(Icons.account_balance_wallet),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("View All Jobs"),
              subtitle: const Text("Monitor job postings"),
              trailing: const Icon(Icons.work),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AdminJobsScreen()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Monitor Chats"),
              subtitle: const Text("Resolve disputes between users"),
              trailing: const Icon(Icons.chat),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AdminChatsScreen()),
                );
              },
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Analytics Dashboard"),
              subtitle: Text("Seasonal demand & city insights"),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Fraud Detection"),
              subtitle: Text("Flag suspicious activity"),
            ),
          ),
        ],
      ),
    );
  }
}
