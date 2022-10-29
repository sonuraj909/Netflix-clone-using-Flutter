import 'package:atom1/core/colors/colors.dart';
import 'package:atom1/core/constants.dart';
import 'package:atom1/presentation/search/widgets/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/tFlSDoWQsAZ2qjICKzfP5Yw6zM5.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => TopSearchItemsTile(),
            separatorBuilder: (context, index) => kheight20,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearchItemsTile extends StatelessWidget {
  TopSearchItemsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          width: screenWidth * .37,
          height: 80,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 16,
            ),
          ),
        ),
        Icon(
          CupertinoIcons.play_circle,
          color: kWhiteColor,
          size: 40,
        ),
      ],
    );
  }
}
