import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/repositories/todo_list/todo_list_repo.dart';

class TodoListController extends GetxController {
  final TodoListRepo _repo;

  TodoListController({required TodoListRepo repo}) : _repo = repo;
}
