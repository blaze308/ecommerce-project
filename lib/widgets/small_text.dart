import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final double size;
  final String text;
  final double height;

  const SmallText({
    super.key,
    this.size = 12,
    this.color = const Color(0xFFccc7c5),
    this.height = 1.2,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        height: height,
        fontSize: size,
        fontFamily: 'Roboto',
      ),
    );
  }
}
