import 'package:fc/components/news_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/web_views/footer_view_web.dart';
import 'package:flutter/material.dart';

class NewsDetailViewWeb extends StatelessWidget {
  const NewsDetailViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth / 40,
              vertical: screenHeight / 35,
            ),
            color: backgroundBlackCustomcolor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NEWS",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Text(
                  "Latest news",
                  style: kSectionSubheadingTextStyle,
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: NewsCard(
                        imagePath: "assets/images/news1.png",
                        title:
                            "The Blue birds are your ardal south east champions",
                        details:
                            "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NewsCard(
                            imagePath: "assets/images/news2.png",
                            title:
                                "Last match against one of the best team in the district",
                            details:
                                "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                          ),
                          SizedBox(height: screenHeight / 10),
                          NewsCard(
                            imagePath: "assets/images/news3.png",
                            title:
                                "Outstanding performance from our keeper this weekend!",
                            details:
                                "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                Text(
                  "Previous news",
                  style: kSectionSubheadingTextStyle,
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Row(
                  children: [
                    Expanded(
                      child: NewsCard(
                        imagePath: "assets/images/news3.png",
                        title:
                            "Outstanding performance from our keeper this weekend!",
                        details:
                            "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: NewsCard(
                        imagePath: "assets/images/news3.png",
                        title:
                            "Outstanding performance from our keeper this weekend!",
                        details:
                            "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: NewsCard(
                        imagePath: "assets/images/news3.png",
                        title:
                            "Outstanding performance from our keeper this weekend!",
                        details:
                            "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          FooterViewWeb()
        ],
      ),
    );
  }
}
