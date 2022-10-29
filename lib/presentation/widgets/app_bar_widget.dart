import 'package:atom1/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
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
    );
  }
}
