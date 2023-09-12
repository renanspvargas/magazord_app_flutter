class TodoModel {
  final int id;
  final String title;
  final String description;
  final bool completed;

  TodoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
  });

  TodoModel copyWith({
    String? title,
    String? description,
    bool? completed,
  }) {
    return TodoModel(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      completed: completed ?? this.completed,
    );
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      completed: map['completed'] as bool,
    );
  }
}
