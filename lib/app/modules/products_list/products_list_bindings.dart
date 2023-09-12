import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/repositories/products_list/products_list_repo.dart';
import 'package:magazord_app_flutter/app/repositories/products_list/products_list_repo_impl.dart';
import './products_list_controller.dart';

class ProductsListBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ProductsListRepo>(ProductsListRepoImpl());
    Get.put(ProductsListController(repo: Get.find()));
  }
}
