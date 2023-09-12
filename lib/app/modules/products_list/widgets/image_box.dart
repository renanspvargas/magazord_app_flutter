import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageBox extends StatelessWidget {
  final String url;
  final double height;

  const ImageBox({
    super.key,
    required this.url,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      height: height,
      width: double.infinity,
      errorBuilder: (_, __, ___) {
        return Container(
          color: Get.isDarkMode ? Colors.grey[800] : Colors.grey[400],
          height: height,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              'Erro ao carregar imagem',
              textAlign: TextAlign.center,
            )),
          ),
        );
      },
    );
  }
}
