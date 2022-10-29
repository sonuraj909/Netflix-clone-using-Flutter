import 'dart:ui';

import 'package:atom1/core/colors/colors.dart';
import 'package:atom1/presentation/home/widgets/custom_button_widget.dart';
import 'package:atom1/presentation/widgets/app_bar_widget.dart';
import 'package:atom1/presentation/widgets/video_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'widgets/coming_soon_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            backgroundColor: kBlackColor,
            title: Row(
              children: [
                Text(
                  'New & Hot',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900),
                ),
                const Spacer(),
                const Icon(
                  Icons.search_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Container(
                  width: 30,
                  height: 30,
                  decoration:
                      BoxDecoration(color: Colors.blue, borderRadius: kRadius7),
                ),
              ],
            ),
            bottom: TabBar(
              labelColor: kBlackColor,
              unselectedLabelColor: kWhiteColor,
              isScrollable: true,
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: kRadius30,
                color: kWhiteColor,
              ),
              tabs: [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: "🔥 Everyone's Watching",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }
}

Widget _buildComingSoon() {
  return ListView.builder(
    itemBuilder: (context, index) => ComingSoonWidget(),
    itemCount: 10,
  );
}

Widget _buildEveryonesWatching() {
  return ListView.builder(
    itemBuilder: (context, index) => EveryonesWatchingWidget(),
  );
}

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VideoWidget(),
            kheight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 190,
                  height: 50,
                  child: Image.network(
                    kNHImage,
                    fit: BoxFit.fill,
                  ),
                ),
                const CustomButtonWidget(
                  icon: Icons.share_sharp,
                  title: "Share",
                  isize: 20,
                  fsize: 14,
                ),
                kwidth,
                const CustomButtonWidget(
                  icon: Icons.add,
                  title: "My List",
                  isize: 22,
                  fsize: 14,
                ),
                kwidth,
                const CustomButtonWidget(
                  icon: Icons.play_circle,
                  title: "Play",
                  isize: 22,
                  fsize: 14,
                ),
              ],
            ),
            kheight,
            const Text(
              'Sample Sales Data, Order Info, Sales, Customer, Shipping, etc., Used for Segmentation, Customer Analytics, Clustering and More. Inspired for retail analytics. This was originally used for Pentaho DI Kettle, But I found the set could be useful for Sales Simulation training.',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
