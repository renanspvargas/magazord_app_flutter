import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './todo_list_controller.dart';

class TodoListPage extends GetView<TodoListController> {
    
    const TodoListPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('TodoListPage'),),
            body: Container(),
        );
    }
}