import 'package:flutter/material.dart';
import 'package:shop/providers/counter.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('exemplo contador'),
      ),
      body: Column(
        children: [
          Text(
            'Contador: ${CounterProvider.of(context)?.state.value}',
          ),
          IconButton(
            onPressed: () {
              setState(() {
                CounterProvider.of(context)?.state.inc();
              });
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(
                () {
                  CounterProvider.of(context)?.state.dec();
                  print(CounterProvider.of(context)?.state.value);
                },
              );
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
