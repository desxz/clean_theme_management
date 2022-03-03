import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../theme/manager/theme_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final AnimationController _controller;

  final items = [
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
    {
      'title': 'What is Lorem Ipsum?',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'https://picsum.photos/200'
    },
  ];

  final iconList = [
    Icons.home,
    Icons.flash_on,
    Icons.earbuds,
    Icons.exit_to_app,
  ];

  var _bottomNavIndex = 0;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    context.read<ThemeManager>().addListener(() {
      if (ThemeManager.instance.currentThemeEnum == ThemeEnum.LIGHT) {
        _controller.animateTo(0, duration: const Duration(milliseconds: 1000));
      } else {
        _controller.animateTo(0.5,
            duration: const Duration(milliseconds: 1000));
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'Flutter Theme',
          style: context.theme.textTheme.headline5
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: FlutterLogo(
            style: FlutterLogoStyle.markOnly,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: InkWell(
              onTap: () async => await Future.delayed(
                const Duration(milliseconds: 200),
                () => ThemeManager.instance.changeTheme(
                    ThemeManager.instance.currentThemeEnum == ThemeEnum.LIGHT
                        ? ThemeEnum.DARK
                        : ThemeEnum.LIGHT),
              ),
              child: Lottie.asset(
                'assets/lottie/47047-dark-mode-button.json',
                width: 60,
                controller: _controller,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: Text(items[index]['title'] ?? ''),
              subtitle: Text(items[index]['description'] ?? ''),
              leading: Image.network(items[index]['image'] ?? ''),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        backgroundColor: Theme.of(context).backgroundColor,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
