import 'package:flutter/material.dart';

void main() {
  runApp(TextStyleApp());
}

class TextStyleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter is awesome!',
                style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Text(
                'Let\'s build apps!',
                style: TextStyle(fontSize: 20, color: Colors.green, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
