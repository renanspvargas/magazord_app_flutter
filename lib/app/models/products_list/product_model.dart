class ProductModel {
  final String title;
  final String description;
  final String imageURL;
  final double price;

  ProductModel({
    required this.title,
    required this.description,
    required this.imageURL,
    required this.price,
  });

  String get priceFormated {
    return r'R$ ' + price.toStringAsFixed(2);
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      title: map['title'] as String,
      description: map['description'] as String,
      imageURL: map['imageURL'] as String,
      price: map['price'] as double,
    );
  }
}
