import 'package:magazord_app_flutter/app/models/todo_list/todo_model.dart';

abstract interface class TodoListRepo {
  List<TodoModel> getTodoListItems();
}
