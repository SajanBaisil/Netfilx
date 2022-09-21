import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imagelist = [
    'https://i.pinimg.com/236x/e9/e6/38/e9e63888308b1a57f442f3debb51791e.jpg',
    'https://i.pinimg.com/236x/31/ff/ed/31ffeda45e14bebbb78e95ed2454febd.jpg',
    'https://i.pinimg.com/236x/26/01/c9/2601c9686cddb11bd97810637e6a4c01.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: const [
                kWidth,
                Icon(
                  Icons.settings,
                  color: kwhitecolor,
                ),
                Text('Smart Downloads')
              ],
            ),
            Text('Introducing Downloads For You'),
            Text(
                'We will download a personalized selection of movies and shows for you, so there is always something to watch on your devices'),
            Container(
              width: size.width,
              height: size.width,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(child: CircleAvatar(radius: size.width * 0.37)),
                  downloadsimagewidgets(
                    imagelist: imagelist[0],
                    margin: EdgeInsets.only(left: 130, bottom: 50),
                    angle: 20,
                    size: Size(size.width * 0.45, size.width * 0.58),
                  ),
                  downloadsimagewidgets(
                    imagelist: imagelist[1],
                    margin: EdgeInsets.only(right: 130, bottom: 50),
                    angle: -20,
                    size: Size(size.width * 0.45, size.width * 0.58),
                  ),
                  downloadsimagewidgets(
                    imagelist: imagelist[2],
                    margin: EdgeInsets.only(left: 0, bottom: 10),
                    size: Size(size.width * 0.45, size.width * 0.65),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: kbuttoncolor,
              child: const Text(
                'Setup',
                style: TextStyle(
                    color: kwhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: kwhitecolor,
              child: const Text(
                'See what you can Download',
                style: TextStyle(
                    color: kblack, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}

class downloadsimagewidgets extends StatelessWidget {
  const downloadsimagewidgets(
      {Key? key,
      required this.imagelist,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.borderradius = 10})
      : super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderradius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(borderradius),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imagelist))),
      ),
    );
  }
}
