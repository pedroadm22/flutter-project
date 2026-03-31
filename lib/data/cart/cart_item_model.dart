import 'package:project_app_ecommerce_kachau/data/product/Product.dart';

class CartItemModel {
  final Product product;
  int quantity;

  CartItemModel(
    {required this.product, 
    this.quantity = 1}
    );
}
