import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';

import 'product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;
  bool _showFavorites = false;

  

  List<Product> get items {
    if(_showFavorites) {
      return _items.where((product) => product.isFavorite).toList();
    }
    return [..._items];
  }

  void showFavoritesOnly() {
    _showFavorites = true;
    notifyListeners();
    
  }

  void showAll() {
    _showFavorites = false;
    notifyListeners();
  }


  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
