import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop/components/product_grid_view.dart';

import '../models/product.dart';
import '../models/product_list.dart';

enum FilterOptions{
    Favorites,
    All
  }



class ProductsOverviewPage extends StatelessWidget {
  
  


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
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
                if(selectedValue == FilterOptions.Favorites) {
                  provider.showFavoritesOnly();
                } else {
                  provider.showAll();
                }
              },
            )
          ],
        ),
        body: ProductGridView());
  }
}
