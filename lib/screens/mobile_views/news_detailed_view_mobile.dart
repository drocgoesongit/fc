import 'package:fc/components/news_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/mobile_views/footer_view_mobile.dart';
import 'package:flutter/material.dart';

class NewsDetailedViewMobile extends StatefulWidget {
  const NewsDetailedViewMobile({super.key});

  @override
  _NewsDetailedViewMobileState createState() => _NewsDetailedViewMobileState();
}

class _NewsDetailedViewMobileState extends State<NewsDetailedViewMobile> {
  String selectedCategory = "Latest";

  final Map<String, List<Map<String, String>>> newsData = {
    "Latest": [
      {
        "imagePath": "assets/images/news2.png",
        "title": "Last match against one of the best teams in the district",
        "details":
            "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
      },
      {
        "imagePath": "assets/images/news2.png",
        "title": "Last match against one of the best teams in the district",
        "details":
            "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
      },
      {
        "imagePath": "assets/images/news2.png",
        "title": "Last match against one of the best teams in the district",
        "details":
            "ABC FC will play a friendly match against local rivals DEF FC on July 25 at 3 PM. Fans are encouraged to attend and support the team as they prepare for the upcoming season.",
      },
      // Add more news data as needed
    ],
    "Past Month": [
      {
        "imagePath": "assets/images/news2.png",
        "title": "Match highlights from the past month",
        "details":
            "Highlights and summaries of matches played in the past month.",
      },
      // Add more news data as needed
    ],
    "Old": [
      {
        "imagePath": "assets/images/news2.png",
        "title": "Historic match events",
        "details": "Recap of historic matches and events from the past.",
      },
      // Add more news data as needed
    ],
  };

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundBlackCustomcolor,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.white,
            )),
        title: Text(
          'NEWS',
          style: mTabBarHeadingTextStyle,
          textAlign: TextAlign.center,
        ),
        centerTitle: true, // Center the title
        elevation: 0, // Remove the shadow under the AppBar
        surfaceTintColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
                vertical: screenHeight / 35,
              ),
              width: screenWidth,
              color: backgroundBlackCustomcolor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PLAYERS",
                    style: kSectionHeadingTextStyle.copyWith(
                      fontSize: screenWidth / 10,
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  Row(
                    children: [
                      buildCategoryText("Latest"),
                      SizedBox(width: 12),
                      buildCategoryText("Past Month"),
                      SizedBox(width: 12),
                      buildCategoryText("Old"),
                    ],
                  ),
                  SizedBox(height: screenHeight / 60),
                  buildNewsCards(screenHeight, screenWidth),
                ],
              ),
            ),
            FooterViewMobile(),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryText(String category) {
    bool isSelected = selectedCategory == category;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Text(
        category,
        style: kSectionSubheadingTextStyle.copyWith(
          color: isSelected ? Colors.orange : Colors.white,
          fontSize: 16,
          decoration:
              isSelected ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }

  Widget buildNewsCards(double screenHeight, double screenWidth) {
    List<Map<String, String>> news = newsData[selectedCategory] ?? [];

    return Column(
      children: news.map((newsItem) {
        return Column(
          children: [
            MobileNewsCard(
              imagePath: newsItem["imagePath"]!,
              title: newsItem["title"]!,
              details: newsItem["details"]!,
            ),
            SizedBox(height: 12),
          ],
        );
      }).toList(),
    );
  }
}
