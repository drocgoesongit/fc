import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Text(
            "Home View Web",
            style: kSectionHeadingTextStyle,
          ),
        ));
  }
}
