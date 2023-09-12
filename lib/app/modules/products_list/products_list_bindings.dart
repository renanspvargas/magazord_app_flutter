import 'package:get/get.dart';
import './products_list_controller.dart';

class ProductsListBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ProductsListController());
    }
}