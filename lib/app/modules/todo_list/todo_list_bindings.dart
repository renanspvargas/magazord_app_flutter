import 'package:get/get.dart';
import './todo_list_controller.dart';

class TodoListBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(TodoListController());
    }
}