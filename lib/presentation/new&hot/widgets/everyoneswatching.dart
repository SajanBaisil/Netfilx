import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/videowidget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custombuttonwidget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          'This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work,life and love in 1990s Manhattan.',
          style: TextStyle(
            color: kgrey,
          ),
        ),
        kheight50,
        const VideoWidget(
          imagesize: double.infinity,
        ),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              title: 'Share',
              iconsize: 26,
              textsize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: 'Add',
              iconsize: 26,
              textsize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'Play',
              iconsize: 26,
              textsize: 16,
            ),
            kWidth
          ],
        )
      ],
    );
  }
}