import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(ImageCarouselApp());
}

class ImageCarouselApp extends StatefulWidget {
  @override
  _ImageCarouselAppState createState() => _ImageCarouselAppState();
}

class _ImageCarouselAppState extends State<ImageCarouselApp> {
  final PageController controller = PageController();
  final List<String> images = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/160',
    'https://via.placeholder.com/170'
  ];
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentPage < images.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToPage(currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: controller,
          children: images.map((url) => Image.network(url, fit: BoxFit.cover)).toList(),
        ),
      ),
    );
  }
}
