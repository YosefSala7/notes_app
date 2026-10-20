class NoteModel {
  String title;
  String body;
  int id;
  NoteModel({required this.title, required this.body, required this.id});

  factory NoteModel.fromJson(var json) {
    return NoteModel(title: json["title"], body: json["content"],id:json["id"]);
  }
}