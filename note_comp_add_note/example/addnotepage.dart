//new import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:monoreponotefirebase/note_controller.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    //inpput controller init
    // NoteControlller noteController = Get.put(NoteControlller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Note"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              //inpput controller
              // controller: noteController.topic,
              decoration: const InputDecoration(
                hintText: "Topic",
                fillColor: Color.fromARGB(255, 209, 219, 191),
                filled: true,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              //inpput controller
              // controller: noteController.description,
              decoration: const InputDecoration(
                hintText: "Description",
                fillColor: Color.fromARGB(255, 209, 219, 191),
                filled: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //inpput controller
                // noteController.addNote();
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
