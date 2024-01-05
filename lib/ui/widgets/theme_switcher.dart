import 'package:crypto_app/ui/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    var switchIcon =
        Icon(themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode);
    return IconButton(
      onPressed: () {
        themeProvider.toggleTheme();
      },
      icon: switchIcon,
    );
  }
}
