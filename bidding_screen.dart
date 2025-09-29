import 'package:flutter/material.dart';
import 'chat_screen.dart';

class BiddingScreen extends StatefulWidget {
  const BiddingScreen({super.key});

  @override
  State<BiddingScreen> createState() => _BiddingScreenState();
}

class _BiddingScreenState extends State<BiddingScreen> {
  final List<Map<String, dynamic>> jobs = [
    {"title": "House Painting", "budget": 5000},
    {"title": "Granite Flooring", "budget": 12000},
    {"title": "Plumbing Work", "budget": 3000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Available Jobs")),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          var job = jobs[index];
          return Card(
            child: ListTile(
              title: Text(job["title"]),
              subtitle: Text("Budget: ₹${job["budget"]}"),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Bid placed for ${job["title"]}"),
                  ));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChatScreen(jobTitle: job["title"])),
                  );
                },
                child: const Text("Bid"),
              ),
            ),
          );
        },
      ),
    );
  }
}
