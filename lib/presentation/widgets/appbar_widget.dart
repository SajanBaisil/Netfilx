import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            kWidth,
            Text(
              title,
              style: GoogleFonts.montserrat(
                  fontSize: 25, fontWeight: FontWeight.w900),
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
      ),
    );
  }
}
