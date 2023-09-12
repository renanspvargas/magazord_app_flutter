import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:magazord_app_flutter/app/modules/products_list/widgets/image_box.dart';
import './products_list_controller.dart';

class ProductsListPage extends GetView<ProductsListController> {
  const ProductsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(() {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 3 / 4.3,
            ),
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              final product = controller.products[index];

              return InkWell(
                onTap: () => controller.didTapProduct(index),
                child: Container(
                  color: Get.isDarkMode ? Colors.black : Colors.grey[300],
                  child: Column(
                    children: [
                      ImageBox(
                        height: 100,
                        url: product.imageURL,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 2,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                product.title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                product.priceFormated,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
