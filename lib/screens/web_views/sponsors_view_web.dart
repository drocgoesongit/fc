import 'package:fc/components/sponsor_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class SponsorsViewWeb extends StatelessWidget {
  const SponsorsViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 40,
          vertical: MediaQuery.of(context).size.height / 35,
        ),
        color: backgroundBlackCustomcolor,
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "RECENT SPONSORS",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SponsorContainer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 60,
                ),
                SponsorContainer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 60,
                ),
                SponsorContainer(),
              ],
            )
          ],
        )),
      ),
    );
  }
}
