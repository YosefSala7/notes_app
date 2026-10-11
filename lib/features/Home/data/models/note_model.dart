class NoteModel {
  String title;
  String body;
  NoteModel({required this.title, required this.body});

  factory NoteModel.fromJson(var json) {
    return NoteModel(title: json["title"], body: json["content"]);
  }
}

List<NoteModel> notes = [
  NoteModel(title: "Flutter Basics", body: "Important concepts to remember when starting with Flutter"),
  NoteModel(title: "Work Ideas", body: "Some ideas for the next project and features to implement"),
  NoteModel(title: "Study Plan", body: "Plan for the next month including Flutter, Firebase and more"),
  NoteModel(title: "Daily Goals", body: "Keep going and make progress every day. 💪"),
];
