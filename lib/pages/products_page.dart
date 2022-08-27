import 'package:flutter/material.dart';
import 'package:shop/components/app_drawer.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciar produtos'),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx,i) => Text('elemento'),
        ),
      ),
    );
  }
}
