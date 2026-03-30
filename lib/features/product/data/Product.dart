
class Product {
  final String title;
  final double cardPrice;
  final String imagePath;

  Product({
  required this.title,
  required this.cardPrice,
  required this.imagePath
  });

  double get cashPrice {
    return cardPrice * 0.1;
  }
}
