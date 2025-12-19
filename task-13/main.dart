import 'package:flutter/material.dart';

void main() {
  runApp(ImageChangeApp());
}

class ImageChangeApp extends StatefulWidget {
  @override
  _ImageChangeAppState createState() => _ImageChangeAppState();
}

class _ImageChangeAppState extends State<ImageChangeApp> {
  String imageUrl = 'https://via.placeholder.com/150';

  void changeImage() {
    setState(() {
      imageUrl = imageUrl == 'https://via.placeholder.com/150'
          ? 'https://via.placeholder.com/200'
          : 'https://via.placeholder.com/150';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image Changer')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 200, width: 200),
            SizedBox(height: 16),
            ElevatedButton(onPressed: changeImage, child: Text('Change Image')),
          ],
        ),
      ),
    );
  }
}
