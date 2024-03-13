import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/models/product.dart';

class GlobalController extends GetxController {
  List<Product> _products = [];
//final Map<String, Product> _favorites = Map();
  final Map<String, Product> _favorites = {};

  Map<String, Product> get favorites => _favorites;
  List<Product> get products => _products;

  @override
  void onInit() {
    super.onInit();
    print("🎃 global onInit");
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final String productsString =
        await rootBundle.loadString('assets/products.json');

    _products = (jsonDecode(productsString) as List)
        .map((e) => Product.fromJson(e))
        .toList();
    print("🎃 products");
    update(['products']);
  }

  onFavorite(int index, bool isFavorite) {
    Product product = _products[index];
    product.isFavorite = isFavorite;
    if (isFavorite) {
      _favorites[product.name] = product;
    } else {
      _favorites.remove(product.name);
    }
    update(['products', 'favorites']);
  }
}
