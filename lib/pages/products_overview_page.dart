import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/app_drawer.dart';
import 'package:shop/components/badge.dart';

import 'package:shop/components/product_grid_view.dart';
import 'package:shop/models/cart.dart';

import '../models/product.dart';
import '../models/product_list.dart';

enum FilterOptions { Favorites, All }

class ProductsOverviewPage extends StatefulWidget {
  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showFavoritesOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorite'),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              )
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showFavoritesOnly = true;
                } else {
                  _showFavoritesOnly = false;
                }
              });
            },
          ),
          Consumer<Cart>(
            child:IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/cart');
                },
                icon: Icon(Icons.shopping_cart),
              ), 
            builder:(ctx, cart, child) =>  Badge(
              value: cart.itemCount.toString(),
              child: child!,
            ),
          )
        ],
      ),
      body: ProductGridView(_showFavoritesOnly),
      drawer: AppDrawer(),
    );
  }
}
