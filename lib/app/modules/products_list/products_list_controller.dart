import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/models/products_list/product_model.dart';
import 'package:magazord_app_flutter/app/repositories/products_list/products_list_repo.dart';

class ProductsListController extends GetxController {
  final ProductsListRepo _repo;

  ProductsListController({required ProductsListRepo repo}) : _repo = repo;

  @override
  void onReady() {
    super.onReady();
    _getAllProducts();
  }

  final List<ProductModel> _products = <ProductModel>[].obs;
  List<ProductModel> get products => _products;

  void _getAllProducts() {
    _products.addAll(_repo.getAllProducts());
  }

  void didTapProduct(int index) {
    // TODO: details page
  }
}
