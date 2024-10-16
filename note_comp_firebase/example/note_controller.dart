// ignore_for_file: unused_local_variable, avoid_print

//new
import 'note_model.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NoteControlller extends GetxController
    implements AbstractUpdateNoteListController {
  TextEditingController topic = TextEditingController();
  TextEditingController description = TextEditingController();

  var noteList = RxList<NoteModel>();
  final db = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    getNotes();
  }

  @override
  void addNote() async {
    var note = NoteModel(topic: topic.text, description: description.text);

    await db.collection("notes").add(note.toJson()).whenComplete(() async {
      printInfo(info: "Note added");
      getNotes();
      topic.text = "";
      description.text = "";
    });
  }

  @override
  void getNotes() async {
    var notes = await db.collection("notes").get();

    noteList.clear();
    for (var note in notes.docs) {
      noteList.add(NoteModel.fromJson(note.data(), note.id));
    }
    print("Notes successfully fetched");
  }

  void deleteNote(String? id) async {
    await db.collection("notes").doc(id).delete().whenComplete(() {
      getNotes();
    });
  }
}

abstract class AbstractUpdateNoteListController {
  addNote();
  getNotes();
}

class NoteUpdaterPageBiding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AbstractUpdateNoteListController>(() => NoteControlller());
  }
}
