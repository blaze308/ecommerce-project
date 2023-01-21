import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  final double height;

  const SmallText({
    super.key,
    // this.color = AppColors.mainBlackColor,
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
          height: Dimensions.heightSmallText,
          fontSize: Dimensions.font10,
          fontFamily: 'Roboto'),
    );
  }
}
