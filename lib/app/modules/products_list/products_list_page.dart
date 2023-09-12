import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './products_list_controller.dart';

class ProductsListPage extends GetView<ProductsListController> {
    
    const ProductsListPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('ProductsListPage'),),
            body: Container(),
        );
    }
}