import 'package:flutter/material.dart';

class JobPostScreen extends StatefulWidget {
  const JobPostScreen({super.key});

  @override
  State<JobPostScreen> createState() => _JobPostScreenState();
}

class _JobPostScreenState extends State<JobPostScreen> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _budgetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Post a Job")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: "Job Title"),
            ),
            TextFormField(
              controller: _descController,
              decoration: const InputDecoration(labelText: "Job Description"),
            ),
            TextFormField(
              controller: _budgetController,
              decoration: const InputDecoration(labelText: "Budget (₹)"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Job posted successfully (₹20 deducted)"),
                ));
                Navigator.pop(context);
              },
              child: const Text("Submit Job"),
            )
          ],
        ),
      ),
    );
  }
}
