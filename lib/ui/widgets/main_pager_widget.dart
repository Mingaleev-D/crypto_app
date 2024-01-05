import 'package:crypto_app/ui/screens/screens.dart';
import 'package:flutter/material.dart';

import 'bottom_nav.dart';

class MainPagerWidget extends StatefulWidget {
  const MainPagerWidget({super.key});

  @override
  State<MainPagerWidget> createState() => _MainPagerWidgetState();
}

class _MainPagerWidgetState extends State<MainPagerWidget> {
  final PageController _mainPageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _mainPageController,
        children: const [
          CryptoStartScreen(),
          MarketScreen(),
          WatchListScreen(),
          ProfileScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.blueGrey[400],
        onPressed: () {},
        child: const Icon(Icons.compare_arrows_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNav(controller: _mainPageController),
    );
  }
}
