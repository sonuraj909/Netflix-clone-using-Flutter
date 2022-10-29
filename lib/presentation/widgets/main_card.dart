import 'package:atom1/core/constants.dart';
import 'package:flutter/cupertino.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uHpfjWUJI2gXQIIxjgAvOZWJORx.jpg';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 250,
        width: 130,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: kRadius7,
        ),
      ),
    );
  }
}
