import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            kNHImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 15,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_mute,
                color: kWhiteColor,
                size: 15,
              ),
            ),
          ),
        )
      ],
    );
  }
}
