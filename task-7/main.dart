import 'package:flutter/material.dart';

void main() {
  runApp(GridImagesApp());
}

class GridImagesApp extends StatelessWidget {
  final List<String> images = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/160',
    'https://via.placeholder.com/170',
    'https://via.placeholder.com/180',
    'https://via.placeholder.com/190',
    'https://via.placeholder.com/200',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Grid Images')),
        body: GridView.count(
          crossAxisCount: 4,
          children: images.map((url) => Image.network(url)).toList(),
        ),
      ),
    );
  }
}
