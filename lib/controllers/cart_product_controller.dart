import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/features/product/data/Product.dart';
import 'package:project_app_ecommerce_kachau/features/cart/data/cart_item_model.dart';

class CartListController extends ChangeNotifier {
  final List<CartItemModel> _items = [];

  List<CartItemModel> get items => _items;

  void addProduct(Product product) {
    final index = _items.indexWhere(
      (item) => item.product == product,
    );

    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItemModel(product: product));
    }

    notifyListeners();
  }

  // ➖ Remover produto
  void removeProduct(Product product) {
    final index = _items.indexWhere(
      (item) => item.product == product,
    );

    if (index >= 0) {
      if (_items[index].quantity > 1) {
        _items[index].quantity--;
      } else {
        _items.removeAt(index);
      }

      notifyListeners();
    }
  }

  // 🗑️ Remover item completamente
  void removeItem(Product product) {
    _items.removeWhere((item) => item.product == product);
    notifyListeners();
  }

  // 🧹 Limpar carrinho
  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  // 💰 Total do carrinho
  double get totalPrice {
    double total = 0;

    for (var item in _items) {
      total += item.product.cardPrice * item.quantity;
    }

    return total;
  }

  // 🔢 Quantidade total de itens (útil pro badge)
  int get totalItems {
    int total = 0;

    for (var item in _items) {
      total += item.quantity;
    }

    return total;
  }
}