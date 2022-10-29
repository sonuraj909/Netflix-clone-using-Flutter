import 'package:atom1/core/colors/colors.dart';
import 'package:atom1/presentation/downloads/screen_downloads.dart';
import 'package:atom1/presentation/fast_laughs/screen_home.dart';
import 'package:atom1/presentation/home/screen_home.dart';
import 'package:atom1/presentation/main_page/widgets/bottom_nav.dart';
import 'package:atom1/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:atom1/presentation/search/screen_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidgets(),
    );
  }
}
