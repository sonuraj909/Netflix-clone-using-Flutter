import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.isize,
    required this.fsize,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final double isize;
  final double fsize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: isize,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: fsize,
          ),
        ),
      ],
    );
  }
}
