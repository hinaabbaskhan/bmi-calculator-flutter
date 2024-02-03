import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color myColor;
  final Widget? cardChild;
  const ReusableCard({super.key, required this.myColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
