import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class TimeContainer extends StatelessWidget {
  final String label;
  final String value;

  const TimeContainer({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: kSectionHeadingTextStyle.copyWith(color: Colors.black),
          ),
          Text(
            label,
            style: kSectionSubheadingTextStyle.copyWith(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
