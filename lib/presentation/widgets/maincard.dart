import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kradius,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://i.pinimg.com/736x/cf/c8/99/cfc899bbb210026bcb64c32ce80dd9ac.jpg'),
        ),
      ),
    );
  }
}
