import 'package:flutter/material.dart';
import '../models/Product.dart';

class CartController extends ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}