import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;
  const IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: Dimensions.iconSize24,
          color: iconColor,
        ),
        SizedBox(width: Dimensions.height5),
        SmallText(text: text),
      ],
    );
  }
}
