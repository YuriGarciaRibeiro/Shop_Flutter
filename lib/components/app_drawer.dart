import 'package:flutter/material.dart';
import '../utils/app_routs.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hello Friend!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shopping_bag_sharp),
            title: Text('Shop'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRouts.HOME,
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('orders'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRouts.ORDERS,
              );
            },
          )
        ],
      ),
    );
  }
}
