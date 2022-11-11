import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconsize;
  final double textsize;
  const CustomButtonWidget(
      {Key? key, required this.icon, required this.title, this.iconsize = 30,this.textsize=18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhitecolor,
          size: iconsize,
        ),
        Text(
          title,
          style:  TextStyle(
            fontSize: textsize,
          ),
        )
      ],
    );
  }
}
