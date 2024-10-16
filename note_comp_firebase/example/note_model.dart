// ignore_for_file: prefer_initializing_formals

class NoteModel {
  String? id;
  String? topic;
  String? description;

  NoteModel({this.id, this.topic, this.description});

  NoteModel.fromJson(Map<String, dynamic> json, String id) {
    this.id = id;
    topic = json["topic"];
    description = json["description"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["topic"] = topic;
    _data["description"] = description;
    return _data;
  }
}
