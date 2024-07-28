import 'package:fc/components/news_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class NewsViewMobile extends StatelessWidget {
  const NewsViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20, vertical: screenHeight / 60),
        color: backgroundBlackCustomcolor,
        width: screenWidth,
        height: screenHeight,
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Latest Club News", style: mSectionSubheadingTextStyle),
                Text("view all", style: mSectionSubheadingTextStyle),
              ],
            ),
            SizedBox(height: 12),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: MobileNewsCard(
                      imagePath: "assets/images/news2.png",
                      title:
                          "Last match against one of the best team in the district",
                      details:
                          "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                    ),
                  ),
                  SizedBox(height: 12),
                  Expanded(
                    child: MobileNewsCard(
                      imagePath: "assets/images/news2.png",
                      title:
                          "Last match against one of the best team in the district",
                      details:
                          "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                    ),
                  ),
                  SizedBox(height: 12),
                  Expanded(
                    child: MobileNewsCard(
                      imagePath: "assets/images/news3.png",
                      title:
                          "Outstanding performance from our keeper this weekend!",
                      details:
                          "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
