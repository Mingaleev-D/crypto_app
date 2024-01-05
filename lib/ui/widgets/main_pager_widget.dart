import 'package:crypto_app/ui/screens/screens.dart';
import 'package:crypto_app/ui/ui_helpers/app_constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MainPagerWidget extends StatefulWidget {
  const MainPagerWidget({super.key});

  @override
  State<MainPagerWidget> createState() => _MainPagerWidgetState();
}

class _MainPagerWidgetState extends State<MainPagerWidget> {
  final PageController _mainPageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _mainPageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: const [
          CryptoStartScreen(),
          MarketScreen(),
          WatchListScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 54,
        backgroundColor: AppConstants.appBacground,
        items: const [
          Icon(FluentIcons.home_16_filled),
          Icon(FluentIcons.shopping_bag_16_filled),
          Icon(FluentIcons.bookmark_16_filled),
          Icon(FluentIcons.person_16_filled),
        ],
        onTap: (index) {
          setState(() {
            _currentPage = index;
            _mainPageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        index: _currentPage,
      ),
    );
  }
}

// floatingActionButton: FloatingActionButton(
//   shape: const CircleBorder(),
//   // backgroundColor: Colors.blueGrey[400],
//   onPressed: () {},
//   child: const Icon(FluentIcons.branch_compare_24_filled),
// ),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// bottomNavigationBar: GlassBox(
//   child: BottomNav(controller: _mainPageController),
// ),
