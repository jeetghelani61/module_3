import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Counter App')),
        body: Center(
          child: Text('$count', style: TextStyle(fontSize: 48)),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => setState(() => count--),
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 16),
            FloatingActionButton(
              onPressed: () => setState(() => count++),
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
