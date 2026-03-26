import 'package:first_app/models/Product.dart';

class ProductRepository {
  List<Product> getProducts() {
    return [
      Product(
        title: "PC Gamer",
        price: 7599.90,
        imagePath: 'assets/images/pcgamer_image.jpeg',
      ),
      Product(
      title: 'Notebook Gamer',
      price: 3999.90,
      imagePath: 'assets/images/product_image_1.jpeg'
      ),
      Product(
      title: 'Notebook Gamer',
      price: 3999.90,
      imagePath: 'assets/images/product_image_1.jpeg'
      ),
      Product(
      title: 'Notebook Gamer',
      price: 3999.90,
      imagePath: 'assets/images/product_image_1.jpeg'
      ),
      Product(
        title: "PC Gamer",
        price: 7599.90,
        imagePath: 'assets/images/pcgamer_image.jpeg',
      ),
      Product(
        title: "PC Gamer",
        price: 7599.90,
        imagePath: 'assets/images/pcgamer_image.jpeg',
      ),
    ];
  }
}
