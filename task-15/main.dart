import 'package:flutter/material.dart';

void main() {
  runApp(LocalImageApp());
}

class LocalImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Local Image')),
        body: Center(
          child: Image.asset(
            'assets/sample.jpg', // Make sure you add this image in pubspec.yaml
            fit: BoxFit.cover,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
