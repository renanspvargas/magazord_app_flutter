import 'package:flutter/material.dart';
import 'package:magazord_app_flutter/app/models/products_list/product_model.dart';
import 'package:magazord_app_flutter/app/modules/products_list/widgets/image_box.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductModel _productModel;

  const ProductDetailsPage({
    super.key,
    required ProductModel productModel,
  }) : _productModel = productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageBox(url: _productModel.imageURL, height: 300),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    _productModel.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    _productModel.description,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Adicione ao carrinho: ${_productModel.priceFormated}',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
