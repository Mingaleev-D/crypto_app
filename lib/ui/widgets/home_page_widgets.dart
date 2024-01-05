import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePageWidgets extends StatefulWidget {
  var controller;
  HomePageWidgets({super.key, required this.controller});

  @override
  State<HomePageWidgets> createState() => _HomePageWidgetsState();
}

class _HomePageWidgetsState extends State<HomePageWidgets> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.controller,
      children: [
        roundedImage('assets/images/a1.png'),
        roundedImage('assets/images/a2.png'),
        roundedImage('assets/images/a3.png'),
        roundedImage('assets/images/a4.png'),
      ],
    );
  }

  Widget roundedImage(String imagePath) {
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(12.0), // Установите радиус закругления
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
