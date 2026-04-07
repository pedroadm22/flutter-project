import 'package:project_app_ecommerce_kachau/features/product/data/Product.dart';

class CartItemModel {
  final Product product;
  int quantity;

  CartItemModel(
    {required this.product, 
    this.quantity = 1}
    );
}
