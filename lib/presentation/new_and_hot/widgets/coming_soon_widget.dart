import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widgets.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        top: 8,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'OCT',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  '14',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width - 58,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                kheight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: Image.network(
                        kNHImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                    kwidth,
                    CustomButtonWidget(
                      icon: Icons.notifications,
                      title: '',
                      isize: 25,
                      fsize: 12,
                    ),
                    kwidth,
                    CustomButtonWidget(
                      icon: Icons.info,
                      title: '',
                      isize: 25,
                      fsize: 12,
                    ),
                  ],
                ),
                kheight,
                Text(
                  'Coming on Friday',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                kheight,
                Text(
                  'Sample Sales Data, Order Info, Sales, Customer, Shipping, etc., Used for Segmentation, Customer Analytics, Clustering and More. Inspired for retail analytics. This was originally used for Pentaho DI Kettle, But I found the set could be useful for Sales Simulation training.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
