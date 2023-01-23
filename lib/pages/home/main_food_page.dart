import 'package:ecommerce_app/pages/home/food_page_body.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.height20, right: Dimensions.height20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      const BigText(text: "Ghana", color: AppColors.mainColor),
                      Row(children: const [
                        SmallText(text: "Accra", color: Colors.black54),
                        Icon(Icons.arrow_drop_down_circle_rounded)
                      ])
                    ]),
                    Center(
                      child: Container(
                          width: Dimensions.height45,
                          height: Dimensions.height45,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.height15),
                            color: Colors.blue,
                          ),
                          child: Icon(Icons.search,
                              size: Dimensions.iconSize24,
                              color: AppColors.mainColor)),
                    )
                  ]))),
      Expanded(
          child: SingleChildScrollView(
        child: FoodPageBody(),
      )),
    ]));
  }
}
