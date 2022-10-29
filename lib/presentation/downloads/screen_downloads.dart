import 'dart:math';
import 'dart:ui';

import 'package:atom1/core/colors/colors.dart';
import 'package:atom1/core/constants.dart';
import 'package:atom1/presentation/widgets/app_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (context, index) => SizedBox(height: 18),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/r0RTi3V63gsh9sFCehk647GGEqo.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gaDwmqA3VviUelHsqmoUpBnrosk.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aMy7XXgivypcXjPUeLiYOdVxX8f.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          'We\'ll download a personalised selection of movies and \n shows for you,so there\'s  always something to watch on \n your phone.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 14,
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.34,
                backgroundColor: kGreyColor,
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(
                  left: 160,
                  top: 40,
                ),
                angle: 25,
                size: Size(size.width * 0.3, size.width * 0.5),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(
                  right: 160,
                  top: 40,
                ),
                angle: -25,
                size: Size(size.width * 0.3, size.width * 0.5),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(
                  bottom: 25,
                  top: 40,
                ),
                angle: 0,
                size: Size(size.width * 0.36, size.width * 0.55),
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Set Up',
                style: TextStyle(
                  color: kButtonColorwhite,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight,
        MaterialButton(
          color: kGreyColor,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Text(
              'Find More to Downloads',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  DownloadsImageWidget({
    Key? key,
    required this.imageList,
    required this.angle,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            width: size.width,
            height: size.width * 1.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageList,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
