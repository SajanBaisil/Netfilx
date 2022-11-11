import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/videowidget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custombuttonwidget.dart';

class CominSoonWidget extends StatelessWidget {
  const CominSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(fontSize: 20, color: kgrey),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 450,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(imagesize: size.width-50,),
              Row(
                children: [
                  const Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                        fontSize: 35,
                        letterSpacing: -4,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications,
                        title: 'Remind me',
                        iconsize: 20,
                        textsize: 16,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info_outlined,
                        title: 'Info',
                        iconsize: 20,
                        textsize: 16,
                      ),
                      kWidth
                    ],
                  )
                ],
              ),
              kHeight,
              const Text('Coming on Friday'),
              kHeight,
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight,
              const Text(
                'Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence -- and her relationship -- into a tailspin.',
                style: TextStyle(
                  color: kgrey,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

