import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class HomeViewTab extends StatelessWidget {
  const HomeViewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        "Home View Tab",
        style: kSectionHeadingTextStyle,
      ),
    ));
  }
}
