import 'package:flutter/material.dart';
import 'job_post_screen.dart';

class ContractorDashboard extends StatelessWidget {
  const ContractorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contractor Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              title: const Text("Post a Job"),
              subtitle: const Text("₹20 per post"),
              trailing: const Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const JobPostScreen()),
                );
              },
            ),
          ),
          const Card(
              child: ListTile(
                  title: Text("Search Workers & Bids"),
                  subtitle: Text("Find labours nearby"))),
          const Card(
              child: ListTile(
                  title: Text("Attendance Approval"),
                  subtitle: Text("Approve daily attendance"))),
          const Card(
              child: ListTile(
                  title: Text("Payroll & Cost Reports"),
                  subtitle: Text("Track costs and payouts"))),
          const Card(
              child: ListTile(
                  title: Text("Escrow Payments"),
                  subtitle: Text("7% admin commission"))),
        ],
      ),
    );
  }
}
