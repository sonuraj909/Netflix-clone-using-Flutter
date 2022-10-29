import 'package:atom1/presentation/fast_laughs/widgets/video_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) {
              return VideoListItem(
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }
}
