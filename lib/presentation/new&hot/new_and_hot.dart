import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/home/widgets/custombuttonwidget.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/everyoneswatching.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/videowidget.dart';
import 'package:netflix_clone/presentation/widgets/appbar_widget.dart';

import '../../core/constants.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                title: Text(
                  'New & Hot',
                  style: GoogleFonts.montserrat(
                      fontSize: 25, fontWeight: FontWeight.w900),
                ),
                actions: [
                  const Icon(
                    Icons.cast,
                    color: Colors.white,
                    size: 25,
                  ),
                  kWidth,
                  Container(
                    height: 20,
                    width: 30,
                    color: Colors.blue,
                  ),
                  kWidth
                ],
                bottom: TabBar(
                    labelColor: kblack,
                    isScrollable: true,
                    unselectedLabelColor: kwhitecolor,
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                        color: kwhitecolor, borderRadius: kradius30),
                    tabs: const [
                      Tab(
                        text: "🍿 Coming Soon",
                      ),
                      Tab(
                        text: "👀 Everyone's Watching",
                      )
                    ]),
              )),
          body: TabBarView(children: [
            _buildComingSoon(),
            _buildEveryonesWatching(context)
          ])),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => const CominSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryonesWatching(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemBuilder: (BuildContext context, index) =>
          const EveryonesWatchingWidget(),
      itemCount: 10,
    );
  }
}
