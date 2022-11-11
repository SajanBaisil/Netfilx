import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetlist = [const _SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetlist[index],
          separatorBuilder: (context, index) => SizedBox(
            height: 25,
          ),
          itemCount: 3,
        ));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imagelist = [
    'https://i.pinimg.com/236x/e9/e6/38/e9e63888308b1a57f442f3debb51791e.jpg',
    'https://i.pinimg.com/236x/31/ff/ed/31ffeda45e14bebbb78e95ed2454febd.jpg',
    'https://i.pinimg.com/236x/26/01/c9/2601c9686cddb11bd97810637e6a4c01.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads For You',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhitecolor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "We will download a personalized selection of\n movies and shows for you, so there's\n always something to watch on your\n devices",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kHeight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                  child: CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor: Colors.grey.withOpacity(0.4),
              )),
              downloadsimagewidgets(
                imagelist: imagelist[0],
                margin: const EdgeInsets.only(left: 180, top: 15),
                angle: 20,
                size: Size(size.width * 0.4, size.width * 0.55),
              ),
              downloadsimagewidgets(
                imagelist: imagelist[1],
                margin: const EdgeInsets.only(right: 180, top: 15),
                angle: -20,
                size: Size(size.width * 0.4, size.width * 0.55),
              ),
              downloadsimagewidgets(
                imagelist: imagelist[2],
                borderradius: 10,
                margin: const EdgeInsets.only(left: 0, bottom: 10, top: 10),
                size: Size(size.width * 0.45, size.width * 0.65),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: kbuttoncolor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Setup',
                style: TextStyle(
                    color: kwhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          onPressed: () {},
          color: kwhitecolor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can Download',
              style: TextStyle(
                  color: kblack, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: kwhitecolor,
        ),
        Text('Smart Downloads')
      ],
    );
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
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(borderradius),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagelist))),
        ),
      ),
    );
  }
}
