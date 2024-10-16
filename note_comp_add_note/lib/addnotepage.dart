//new import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_comp_firebase/note_controller.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    NoteControlller noteController = Get.find<NoteControlller>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Note"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: noteController.topic,
              decoration: const InputDecoration(
                hintText: "Topic",
                fillColor: Color.fromARGB(255, 209, 219, 191),
                filled: true,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: noteController.description,
              decoration: const InputDecoration(
                hintText: "Description",
                fillColor: Color.fromARGB(255, 209, 219, 191),
                filled: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                noteController.addNote();
                Get.back();
              },
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
