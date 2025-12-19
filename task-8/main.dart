import 'package:flutter/material.dart';

void main() {
  runApp(NamesListApp());
}

class NamesListApp extends StatelessWidget {
  final List<String> names = ['Alice', 'Bob', 'Charlie', 'David', 'Eve'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Names List')),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
              onTap: () => print('Name tapped: ${names[index]}'),
            );
          },
        ),
      ),
    );
  }
}
