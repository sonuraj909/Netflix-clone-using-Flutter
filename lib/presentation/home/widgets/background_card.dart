import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import 'custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kMainImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomButtonWidget(
                icon: Icons.add,
                title: 'My List',
                isize: 20,
                fsize: 16,
              ),
              _PlayButton(),
              CustomButtonWidget(
                icon: Icons.info_outline_rounded,
                title: 'info',
                isize: 20,
                fsize: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow_rounded,
        size: 20,
        color: kBlackColor,
      ),
      label: Text(
        'Play',
        style: TextStyle(
          fontSize: 15,
          color: kBlackColor,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
      ),
    );
  }
}
