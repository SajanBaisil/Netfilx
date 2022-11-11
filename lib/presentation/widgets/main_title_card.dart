import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/maincard.dart';
import 'package:netflix_clone/presentation/widgets/title.dart';

import '../../core/constants.dart';
import '../search/widgets/search_result.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => const MainCardWidget(),
              )),
        ),
      ],
    );
  }
}
