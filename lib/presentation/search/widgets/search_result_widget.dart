import 'package:atom1/core/constants.dart';
import 'package:atom1/presentation/search/widgets/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/tFlSDoWQsAZ2qjICKzfP5Yw6zM5.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
          child: GridView.count(
            childAspectRatio: 1.2 / 1.8,
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: List.generate(
              20,
              (index) {
                return const MainCardSearch();
              },
            ),
          ),
        )
      ],
    );
  }
}

class MainCardSearch extends StatelessWidget {
  const MainCardSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
