import 'package:flutter/material.dart';

class AdminChatsScreen extends StatelessWidget {
  const AdminChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chats = [
      {"job": "House Painting", "users": "Labour A ↔ Contractor X"},
      {"job": "Granite Flooring", "users": "Labour B ↔ Contractor Y"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Monitor Chats")),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          var chat = chats[index];
          return Card(
            child: ListTile(
              title: Text(chat["job"]!),
              subtitle: Text(chat["users"]!),
              trailing: const Icon(Icons.remove_red_eye),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Viewing chat: ${chat["job"]}"),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
