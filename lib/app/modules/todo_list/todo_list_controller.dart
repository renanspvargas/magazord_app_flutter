import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/models/todo_list/todo_model.dart';
import 'package:magazord_app_flutter/app/repositories/todo_list/todo_list_repo.dart';

class TodoListController extends GetxController {
  final TodoListRepo _repo;

  TodoListController({required TodoListRepo repo}) : _repo = repo;

  @override
  void onReady() {
    super.onReady();
    _getAllTasks();
  }

  final List<TodoModel> _tasks = <TodoModel>[].obs;
  List<TodoModel> get tasks => _tasks;

  void _getAllTasks() {
    _tasks.addAll(_repo.getTodoListItems());
  }

  void didTapTask(bool? isCompleted, int index) {
    if (isCompleted != null && isCompleted) {
      TodoModel newTask = _tasks[index].copyWith(completed: isCompleted);
      _tasks.removeAt(index);
      _tasks.add(newTask);
    }

    if (isCompleted == null || !isCompleted) {
      TodoModel newTask = _tasks[index].copyWith(completed: isCompleted);
      _tasks.removeAt(index);
      _tasks.insert(0, newTask);
    }
  }
}
