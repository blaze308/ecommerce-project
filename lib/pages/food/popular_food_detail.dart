import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    String imageOnline =
        "https://images.unsplash.com/photo-1621341258668-b2bf005a9f97?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                // height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageOnline), fit: BoxFit.cover)),
              )),
          Positioned(
              left: Dimensions.height20,
              right: Dimensions.height20,
              child: Row(
                children: [],
              )),
        ],
      ),
    );
  }
}
