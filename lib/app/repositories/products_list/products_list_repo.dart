import 'package:magazord_app_flutter/app/models/products_list/product_model.dart';

abstract interface class ProductsListRepo {
  List<ProductModel> getAllProducts();
}
