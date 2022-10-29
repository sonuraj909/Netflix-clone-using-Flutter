import 'package:atom1/core/colors/colors.dart';
import 'package:atom1/core/constants.dart';
import 'package:atom1/presentation/search/widgets/search_idle_widget.dart';
import 'package:atom1/presentation/search/widgets/search_result_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: kGreyColor,
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: kGreyColor,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kGreyColor,
                ),
                style: const TextStyle(color: kWhiteColor),
              ),
              kheight,
              Expanded(
                // child: const SearchIdleWidget(),
                child: const SearchResultWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
