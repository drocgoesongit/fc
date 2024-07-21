import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FooterViewWeb extends StatelessWidget {
  const FooterViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth / 40,
          vertical: screenHeight / 35,
        ),
        color: backgroundBlackCustomcolor,
        // width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMainColumn(context),
                _buildLinkColumn(
                  context,
                  "Team",
                  ["First Team", "Reserves", "U19", "U11"],
                ),
                _buildLinkColumn(
                  context,
                  "Matches",
                  [
                    "Fixuters",
                    "Tickets",
                    "Results",
                  ],
                ),
                _buildLinkColumn(
                  context,
                  "Kits",
                  [
                    "Club kits (Macron)",
                    "Jerseys",
                    "Accessories",
                  ],
                ),
                _buildLinkColumn(
                  context,
                  "Others",
                  [
                    "Sponsors",
                    "Privacy Policy",
                    "Terms & Conditions",
                    "Return Policy"
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            _buildCopyright(context)
          ],
        ),
      ),
    );
  }

  Widget _buildMainColumn(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ABC CLUB",
            style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
          ),
          SizedBox(height: screenHeight / 40),
          Text(
            "With lots of unique block, you can easily build a page without coding. Build your next landing page.",
            style: kSectionSubheadingTextStyle,
          ),
          SizedBox(height: screenHeight / 10),
          Row(
            children: [
              _buildSocialIcon("assets/images/instagram.svg"),
              _buildSocialIcon("assets/images/facebook.svg"),
              _buildSocialIcon("assets/images/X.svg"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SvgPicture.asset(
        assetPath,
        height: 20,
        width: 20,
      ),
    );
  }

  Widget _buildCopyright(BuildContext context) {
    return Text("© 2024 Copyright, All Right Reserved, Made by ABC CLUB",
        style: kSectionSubheadingTextStyle.copyWith(
            fontSize: 14, color: Colors.grey));
  }

  Widget _buildLinkColumn(
      BuildContext context, String heading, List<String> links) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: kSectionSubheadingTextStyle.copyWith(
                color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: screenHeight / 40),
          ...links.map((link) => Padding(
                padding: EdgeInsets.only(bottom: screenHeight / 80),
                child: Text(
                  link,
                  style: kSectionSubheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
              )),
        ],
      ),
    );
  }
}
