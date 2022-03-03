import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'theme/manager/theme_manager.dart';

void main() => runApp(const CustomThemeListener());

class CustomThemeListener extends StatelessWidget {
  const CustomThemeListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeManager.instance),
      ],
      child: const ThemeManagementApp(),
    );
  }
}

class ThemeManagementApp extends StatelessWidget {
  const ThemeManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: context.theme,
      home: const HomePage(),
    );
  }
}
