import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandibleText extends StatefulWidget {
  final String text;
  const ExpandibleText({super.key, required this.text});

  @override
  State<ExpandibleText> createState() => _ExpandibleTextState();
}

class _ExpandibleTextState extends State<ExpandibleText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      //late must all be initialised
      firstHalf = widget.text;
      secondHalf = widget.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              size: Dimensions.font16,
              color: AppColors.paraColor,
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                    size: Dimensions.font16,
                    color: AppColors.paraColor,
                    height: 1.8,
                    text: hiddenText
                        ? ("$firstHalf...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        size: Dimensions.font16,
                        color: AppColors.paraColor,
                        text: "Show More",
                      ),
                      SizedBox(width: Dimensions.width10),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
