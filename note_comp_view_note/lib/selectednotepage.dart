import 'package:flutter/material.dart';

class SelectedNotePage extends StatelessWidget {
  const SelectedNotePage(
      {super.key, required this.topic, required this.description});

  final String topic;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              description,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
