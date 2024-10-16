// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

//new import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_comp_webview/webviewhomepage.dart';
import 'package:note_comp_add_note/addnotepage.dart';
import 'package:note_comp_firebase/note_controller.dart';
import 'package:note_comp_view_note/selectednotepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    NoteControlller noteController = Get.put(NoteControlller());
    return Scaffold(
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              heroTag: "btnAdd",
              onPressed: () {
                Get.to(AddNotePage(),
                    transition: Transition.downToUp,
                    binding: NoteUpdaterPageBiding());
              },
              backgroundColor: const Color.fromARGB(255, 161, 245, 164),
              child: Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 50,
            child: FloatingActionButton(
              heroTag: "btnWebview",
              onPressed: () => (Get.to(WebViewHomePage()),),
              backgroundColor: const Color.fromARGB(255, 161, 245, 164),
              child: Icon(Icons.web),
            ),
          )
        ],
      ),
      appBar: AppBar(
          title: Text("My Notes"),
          backgroundColor: Colors.lightGreen,
          centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(height: 10),
            Container(
                height: 600,
                child: Obx(
                  () => ListView(
                    children: noteController.noteList
                        .map(
                          (e) => ListTile(
                            leading: const Icon(Icons.note, size: 40),
                            title: Text(e.topic.toString()),
                            subtitle: Text(e.description.toString()),
                            onTap: () {
                              Get.to(
                                  () => SelectedNotePage(
                                        topic: e.topic.toString(),
                                        description: e.description.toString(),
                                      ),
                                  transition: Transition.rightToLeft);
                            },
                            trailing: IconButton(
                              onPressed: () {
                                noteController.deleteNote(e.id);
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
