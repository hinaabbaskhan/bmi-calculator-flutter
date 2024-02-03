import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final String? text;
  final IconData? myIcon;
  IconContent({
    super.key,
    this.text,
    this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          myIcon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text!,
          style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF)),
        )
      ],
    );
  }
}
