import 'package:atom1/core/colors/colors.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 150,
              ),
              Container(
                height: 250,
                width: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2cxKD3qCNVxvnOjLxLbCvTLABxJ.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: kRadius7,
                ),
              ),
            ],
          ),
          Positioned(
            left: 10,
            top: 45,
            child: BorderedText(
              strokeColor: kWhiteColor,
              strokeWidth: 5,
              strokeCap: StrokeCap.round,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontSize: 120,
                  color: Color.fromARGB(200, 0, 0, 0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
