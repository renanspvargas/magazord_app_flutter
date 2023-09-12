import 'package:magazord_app_flutter/app/models/todo_list/todo_model.dart';
import 'package:magazord_app_flutter/app/repositories/todo_list/todo_list_repo.dart';

class TodoListRepoImpl implements TodoListRepo {
  final _tasks = [
    {
      'id': 1,
      'title': "Tarefa 1",
      'description': "Descrição da Tarefa 1",
      'completed': false
    },
    {
      'id': 2,
      'title': "Tarefa 2",
      'description':
          "Descrição da Tarefa 2 Descrição da Tarefa 2 Descrição da Tarefa 2 Descrição da Tarefa 2 Descrição da Tarefa 2 Descrição da Tarefa 2 Descrição da Tarefa 2 Descrição da Tarefa 2",
      'completed': false
    },
    {
      'id': 3,
      'title': "Tarefa 3",
      'description': "Descrição da Tarefa 3",
      'completed': true
    },
  ];

  @override
  List<TodoModel> getTodoListItems() {
    return _tasks.map((e) => TodoModel.fromMap(e)).toList();
  }
}
