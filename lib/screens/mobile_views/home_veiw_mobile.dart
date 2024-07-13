import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        "Home View Mobile",
        style: kSectionHeadingTextStyle,
      ),
    ));
  }
}
