import 'package:flutter/material.dart';
import 'package:hcc_detector/core/constant.dart';

class AppbarComponent extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const AppbarComponent({
    Key? key,
    this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              "images/kebda copy.png",
              fit: BoxFit.fill,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HCC",
                  style: TextStyle(
                    color: textTitlecolor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Detector",
                  style: TextStyle(
                    color: textdetectorcolor,
                  ),
                ),
              ],
            ),
          ],
        ),
        InkWell(
          mouseCursor: MaterialStateMouseCursor.clickable,
          onTap: () {
            scaffoldKey?.currentState?.openEndDrawer();
          },
          child: Image.asset(
            "images/menu.png",
            scale: 1.6,
          ),
        ),
      ],
    );
  }
}
