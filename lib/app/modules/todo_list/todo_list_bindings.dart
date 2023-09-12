import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/repositories/todo_list/todo_list_repo.dart';
import 'package:magazord_app_flutter/app/repositories/todo_list/todo_list_repo_impl.dart';
import './todo_list_controller.dart';

class TodoListBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<TodoListRepo>(TodoListRepoImpl());
    Get.put(TodoListController(repo: Get.find()));
  }
}
