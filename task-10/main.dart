import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingCartApp());
}

class ShoppingCartApp extends StatefulWidget {
  @override
  _ShoppingCartAppState createState() => _ShoppingCartAppState();
}

class _ShoppingCartAppState extends State<ShoppingCartApp> {
  int cartCount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Shopping Cart'), actions: [
          Center(child: Text('Cart: $cartCount  ')),
        ]),
        body: ListView(
          children: ['Apple', 'Banana', 'Orange'].map((item) {
            return ListTile(
              title: Text(item),
              trailing: ElevatedButton(
                onPressed: () {
                  setState(() {
                    cartCount++;
                  });
                },
                child: Text('Add to Cart'),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
