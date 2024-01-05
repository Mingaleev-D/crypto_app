import 'package:crypto_app/ui/ui_helpers/app_constants.dart';
import 'package:crypto_app/ui/widgets/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/home_page_widgets.dart';

class CryptoStartScreen extends StatefulWidget {
  const CryptoStartScreen({super.key});

  @override
  State<CryptoStartScreen> createState() => _CryptoStartScreenState();
}

class _CryptoStartScreenState extends State<CryptoStartScreen> {
  final PageController _pageViewController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.appBacground,
        actions: const [
          ThemeSwitcher(),
        ],
      ),
      drawer: const Drawer(),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // PageView
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 7, right: 7),
                  child: SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        HomePageWidgets(controller: _pageViewController),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: SmoothPageIndicator(
                              controller: _pageViewController,
                              count: 4,
                              effect: const ExpandingDotsEffect(
                                  activeDotColor: AppConstants.appBacground,
                                  dotWidth: 10,
                                  dotHeight: 10),
                              onDotClicked: (index) =>
                                  _pageViewController.animateToPage(index,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeInOut),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
