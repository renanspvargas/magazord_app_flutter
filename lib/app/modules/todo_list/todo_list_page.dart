import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:magazord_app_flutter/app/models/todo_list/todo_model.dart';
import './todo_list_controller.dart';

class TodoListPage extends GetView<TodoListController> {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.tasks.length,
          itemBuilder: (context, index) {
            TodoModel task = controller.tasks[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: CheckboxListTile(
                title: Text(task.title),
                subtitle: Text(task.description),
                value: task.completed,
                onChanged: (value) => controller.didTapTask(value, index),
                tileColor: task.completed ? Colors.grey : Colors.transparent,
              ),
            );
          },
        );
      }),
    );
  }
}
