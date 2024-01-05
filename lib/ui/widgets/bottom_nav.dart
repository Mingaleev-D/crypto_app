import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  PageController controller;
  BottomNav({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Colors.greenAccent[700],
      child: SizedBox(
        height: 63,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width / 2 - 40,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: const Icon(Icons.home)),
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: const Icon(Icons.bar_chart)),
                ],
              ),
            ),
            SizedBox(
              width: size.width / 2 - 40,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(3,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: const Icon(Icons.bookmark)),
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(2,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: const Icon(Icons.person)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
