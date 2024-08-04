import 'package:fc/components/news_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/web_views/news_detail_view_web.dart';
import 'package:flutter/material.dart';

class NewsViewWeb extends StatelessWidget {
  const NewsViewWeb({super.key});

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
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "NEWS",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                const SizedBox(width: 16),
                const CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            const Expanded(
              child: Row(
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
                      children: [
                        Expanded(
                          child: NewsCard(
                            imagePath: "assets/images/news2.png",
                            title:
                                "Last match against one of the best team in the district",
                            details:
                                "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
                          ),
                        ),
                        SizedBox(height: 12),
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
