import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/custombuttonwidget.dart';
import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';

import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: scrollnotifier,
              builder: (BuildContext context, index, _) {
                return NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    print(direction);
                    if (direction == ScrollDirection.reverse) {
                      scrollnotifier.value = false;
                    } else if (direction == ScrollDirection.forward) {
                      scrollnotifier.value = true;
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      ListView(
                        children: const [
                          BackgroundCard(),
                          MainTitleCard(
                            title: 'Released in the past year',
                          ),
                          kHeight,
                          MainTitleCard(title: 'Trending Now'),
                          kHeight,
                          NumberTitleCard(),
                          kHeight,
                          MainTitleCard(
                            title: 'Tense Dramas',
                          ),
                          kHeight,
                          MainTitleCard(title: 'South Indian Cinema'),
                          kHeight
                        ],
                      ),
                      scrollnotifier.value == true
                          ? AnimatedContainer(
                              duration: const Duration(milliseconds: 1000),
                              width: double.infinity,
                              height: 90,
                              color: Colors.black.withOpacity(0.3),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                        width: 60,
                                        height: 60,
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.cast,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      kWidth,
                                      Container(
                                        height: 25,
                                        width: 25,
                                        color: Colors.blue,
                                      ),
                                      kWidth
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('TV Shows',
                                          style: khometitletextstyle),
                                      Text(
                                        'Movies',
                                        style: khometitletextstyle,
                                      ),
                                      Text(
                                        'Categories',
                                        style: khometitletextstyle,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          : kHeight,
                    ],
                  ),
                );
              })),
    );
  }
}
