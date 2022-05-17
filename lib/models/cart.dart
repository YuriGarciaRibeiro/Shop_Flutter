import 'cart_item.dart';

class Cart{
  Map<String,CartItem> _items = {};

  Map<String,CartItem> get items{
    return {..._items};
  }
}