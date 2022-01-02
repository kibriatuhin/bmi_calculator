import 'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
  final String? lavel;
  final IconData? icon;
  IconContent({this.lavel, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: kiconSize,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          lavel!,
          style: klabelTextStyle,
        )
      ],
    );
  }
}
