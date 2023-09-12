import 'package:magazord_app_flutter/app/models/products_list/product_model.dart';
import 'package:magazord_app_flutter/app/repositories/products_list/products_list_repo.dart';

class ProductsListRepoImpl implements ProductsListRepo {
  final _products = [
    {
      'title': 'Hambúrguer Clássico',
      'description':
          'Nosso hambúrguer clássico é feito com um suculento patty de carne bovina grelhada, queijo cheddar derretido, alface, tomate, cebola e nosso molho especial em um pão de hambúrguer fresco. Uma escolha tradicional e deliciosa.',
      'imageURL':
          'https://s2-casavogue.glbimg.com/GRF9KCq-1hiz5uSs-xX9Go_KqIc=/0x0:2048x1365/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_d72fd4bf0af74c0c89d27a5a226dbbf8/internal_photos/bs/2022/p/X/eb4KQdToys327cGqnRGg/receita-ceboloni-bacon.jpg',
      'price': 20.0,
    },
    {
      'title': 'Hambúrguer Vegetariano',
      'description':
          'Uma opção saudável e saborosa, nosso hambúrguer vegetariano é feito com um patty de grão-de-bico, lentilhas e vegetais frescos. Servido com queijo suíço, alface, tomate, cebola caramelizada e maionese de abacate em um pão integral.',
      'imageURL':
          'https://www.estadao.com.br/resizer/YIBfPUoXUOKRYG7IVo-jptwsSFY=/720x503/filters:format(jpg):quality(80):focal(3070x2285:3080x2295)/cloudfront-us-east-1.images.arcpublishing.com/estadao/L3LYN5Y4MRG6BB47MNHEEXDRGA.jpeg',
      'price': 18.0,
    },
    {
      'title': 'Hambúrguer BBQ Bacon',
      'description':
          'Prepare-se para um sabor defumado com nosso hambúrguer BBQ Bacon. Ele apresenta um patty de carne bovina coberto com queijo defumado, bacon crocante, cebola roxa, alface e nosso molho de churrasco especial. Um festival de sabores para os amantes de carne.',
      'imageURL':
          'https://www.montarumnegocio.com/wp-content/uploads/2021/02/Dicas-de-como-fazer-hamburguer-para-vender.jpg',
      'price': 22.0,
    },
    {
      'title': 'Hambúrguer Picante Mexicano',
      'description':
          'Se você gosta de um toque picante, experimente nosso hambúrguer picante mexicano. Ele inclui um patty de carne bovina temperado, jalapeños, queijo pepper jack, guacamole fresco, alface e tomate em um pão de pimenta jalapeño.',
      'imageURL': 'https://assets.unileversolutions.com/recipes-v2/230446.jpg',
      'price': 22.0,
    },
    {
      'title': 'Hambúrguer Frango Grelhado com Pesto',
      'description':
          'Para uma opção mais leve, recomendamos o hambúrguer de frango grelhado com pesto. Apresenta um peito de frango grelhado, queijo provolone, rúcula fresca, tomate seco, e nosso pesto caseiro em um pão ciabatta. Uma explosão de sabores frescos.',
      'imageURL':
          'https://conteudo.imguol.com.br/c/entretenimento/ee/2022/04/28/hamburguer-sanduiche-lanche-1651166602338_v2_4x3.jpg',
      'price': 19.0,
    },
  ];

  @override
  List<ProductModel> getAllProducts() {
    return _products.map((e) => ProductModel.fromMap(e)).toList();
  }
}
