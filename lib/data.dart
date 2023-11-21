class Data {
  int? id;
  String title;
  String description;

  Data({this.id, required this.title, required this.description});

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'description': description};
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      id: map['id'],
      title: map['title'], 
      description: map['description'],
    );
  }
}