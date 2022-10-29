import 'dart:ffi';

import 'package:atom1/core/colors/colors.dart';
import 'package:atom1/core/constants.dart';
import 'package:atom1/presentation/fast_laughs/widgets/video_list_item.dart';
import 'package:atom1/presentation/home/widgets/number_card.dart';
import 'package:atom1/presentation/widgets/main_card.dart';
import 'package:atom1/presentation/widgets/main_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/main_title_card.dart';
import 'widgets/background_card.dart';
import 'widgets/number_title_card.dart';

ValueNotifier<bool> _scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                _scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                _scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCard(),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        children: [
                          MainTitleCard(
                            title: "Released in the past year",
                          ),
                          MainTitleCard(
                            title: "Trending Now",
                          ),
                          NumberTitleCard(),
                          MainTitleCard(
                            title: "Tense Drama",
                          ),
                          MainTitleCard(
                            title: "South Indian Cinemas",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                _scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: Duration(
                          milliseconds: 2500,
                        ),
                        width: double.infinity,
                        height: 95,
                        color: Colors.black.withOpacity(0.07),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Image(
                                    image: NetworkImage(
                                        'https://cdn3.iconfinder.com/data/icons/scientific-1/512/Atom-512.png'),
                                    width: 30,
                                    height: 30,
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
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: kRadius7),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: _Text(
                                      title: 'TV Shows',
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: _Text(
                                      title: 'Movies',
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: TextButton.icon(
                                      onPressed: () {},
                                      label: _Text(title: 'Categories'),
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : kheight,
              ],
            ),
          );
        },
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        color: kWhiteColor,
      ),
    );
  }
}
