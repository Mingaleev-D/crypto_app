import 'package:crypto_app/ui/ui_helpers/app_constants.dart';
import 'package:crypto_app/ui/widgets/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marquee/marquee.dart';
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
  var defaultChoiceIndex = 0;
  final List<String> _choicesList = [
    'Top MarketCaps',
    'Top Gainers',
    'Top Losers',
  ];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
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
                const Gap(5),
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Marquee(
                    text: '🔊 this is place for news in application ',
                    style: textTheme.bodySmall,
                  ),
                ),
                const Gap(10),
                //ButtonClicker
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: AppConstants.appBacground,
                            backgroundColor: Colors.green.shade300),
                        onPressed: () {},
                        child: Text(
                          'buy',
                          style: textTheme.bodyMedium?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                      const Gap(10),
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: AppConstants.appBacground,
                                  backgroundColor: Colors.redAccent.shade200),
                              onPressed: () {},
                              child: Text(
                                'sell',
                                style: textTheme.bodyMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                  child: Row(
                    children: [
                      Wrap(
                          spacing: 8,
                          children: List.generate(
                            _choicesList.length,
                            (index) {
                              return ChoiceChip(
                                label: Text(_choicesList[index],
                                    style: textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.bold)),
                                selected: defaultChoiceIndex == index,
                                selectedColor: Colors.blueAccent,
                                onSelected: (value) {
                                  setState(() {
                                    defaultChoiceIndex =
                                        value ? index : defaultChoiceIndex;
                                  });
                                },
                              );
                            },
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
