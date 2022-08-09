import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/app_drawer.dart';
import "package:shop/components/order.dart";

import '../models/order_list.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OrderList order = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: ListView.builder(
        itemCount: order.itemCount,
        itemBuilder: (ctx, i) => OrderWidget(order: order.itens[i]),
      ),
      drawer: AppDrawer(),
    );
  }
}