import 'package:flutter/cupertino.dart';

import 'cart.dart';
import 'order.dart';

class OrderList with ChangeNotifier{
  List<Order> _itens = [];

  List<Order> get itens{
    return [..._itens];
  }

  int get itemCount{
    return _itens.length;
  }


  void addOrder(Cart cart){
    _itens.insert(
      0,
      Order(
        id: DateTime.now().toString(),
        total: cart.totalAmount,
        dateTime: DateTime.now(),
        products: cart.items.values.toList(),
      ),
    );
    notifyListeners();
    
  }


}

class OrderItem {
}