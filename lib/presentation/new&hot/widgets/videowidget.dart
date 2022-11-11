import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class VideoWidget extends StatelessWidget {
  final double imagesize;
  const VideoWidget({
    Key? key,required this.imagesize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: imagesize,
          height: 200,
          child: Image.network(
            newandhottempImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black.withOpacity(0.5),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    size: 22,
                  ))),
        ),
      ],
    );
  }
}
