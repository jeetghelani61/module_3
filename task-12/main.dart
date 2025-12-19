import 'package:flutter/material.dart';

void main() {
  runApp(ToggleBackgroundApp());
}

class ToggleBackgroundApp extends StatefulWidget {
  @override
  _ToggleBackgroundAppState createState() => _ToggleBackgroundAppState();
}

class _ToggleBackgroundAppState extends State<ToggleBackgroundApp> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: isOn ? Colors.green : Colors.red,
          child: Center(
            child: Switch(
              value: isOn,
              onChanged: (val) {
                setState(() {
                  isOn = val;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
