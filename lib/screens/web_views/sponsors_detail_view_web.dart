import 'package:fc/components/sponsor_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/web_views/footer_view_web.dart';
import 'package:flutter/material.dart';

class SponsorsDetailViewWeb extends StatelessWidget {
  const SponsorsDetailViewWeb({super.key});

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
                  "SPONSORS",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Text(
                  "We extends our sincere appreciation for our club sponsors.",
                  style: kSectionSubheadingTextStyle,
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SponsorsDetailContainer(
                          image: "assets/images/sponsor1.png",
                          labelText: "Feign Lightworks - Club Sponsor",
                          viewSiteUrl: "view site"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: SponsorsDetailContainer(
                          image: "assets/images/sponsor1.png",
                          labelText: "Quotient - Club Sponsor",
                          viewSiteUrl: "view site"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: SponsorsDetailContainer(
                          image: "assets/images/sponsor1.png",
                          labelText: "Feign Lightworks - Club Sponsor",
                          viewSiteUrl: "view site"),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                Text(
                  "All Players Sponsor",
                  style: kSectionSubheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: screenHeight / 80,
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
                ),
                SizedBox(
                  height: screenHeight / 20,
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
                ),
              ],
            ),
          ),
          FooterViewWeb()
        ],
      ),
    );
  }
}
