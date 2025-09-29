import 'package:flutter/material.dart';
import 'bidding_screen.dart';

class LabourDashboard extends StatelessWidget {
  const LabourDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Labour Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Card(
              child: ListTile(
                  title: Text("Digital ID Card"),
                  subtitle: Text("View your verified profile"))),
          const Card(
              child: ListTile(
                  title: Text("Attendance"),
                  subtitle: Text("GPS / Face recognition"))),
          const Card(
              child: ListTile(
                  title: Text("Insurance & Bonus"),
                  subtitle: Text("₹5L cover + loyalty rewards"))),
          Card(
            child: ListTile(
              title: const Text("Browse Jobs"),
              subtitle: const Text("See available jobs and bid"),
              trailing: const Icon(Icons.work),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const BiddingScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
