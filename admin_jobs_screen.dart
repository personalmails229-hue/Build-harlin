import 'package:flutter/material.dart';

class AdminJobsScreen extends StatelessWidget {
  const AdminJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final jobs = [
      {"title": "House Painting", "budget": 5000, "status": "Open"},
      {"title": "Granite Flooring", "budget": 12000, "status": "Bidding"},
      {"title": "Plumbing Work", "budget": 3000, "status": "Assigned"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("All Job Posts")),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          var job = jobs[index];
          return Card(
            child: ListTile(
              title: Text(job["title"]!),
              subtitle: Text("Budget: ₹${job["budget"]} | Status: ${job["status"]}"),
            ),
          );
        },
      ),
    );
  }
}
