import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FooterViewMobile extends StatelessWidget {
  const FooterViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth / 20,
          vertical: screenHeight / 10,
        ),
        color: backgroundBlackCustomcolor,
        width: screenWidth,
        // height: screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildMainColumn(context),
            SizedBox(height: screenHeight / 20),
            _buildLinkColumns(context),
            SizedBox(height: screenHeight / 40),
            _buildCopyright(context),
          ],
        ),
      ),
    );
  }

  Widget _buildMainColumn(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ABC CLUB",
          style: kSectionHeadingTextStyle.copyWith(fontSize: 30),
        ),
        SizedBox(height: screenHeight / 40),
        Text(
          "With lots of unique blocks, you can easily build a page without coding. Build your next landing page.",
          style: kSectionSubheadingTextStyle.copyWith(fontSize: 14),
        ),
        SizedBox(height: screenHeight / 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildSocialIcon("assets/images/instagram.svg"),
            _buildSocialIcon("assets/images/facebook.svg"),
            _buildSocialIcon("assets/images/X.svg"),
          ],
        ),
      ],
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
    return Text(
      "© 2024 Copyright, All Right Reserved, Made by ABC CLUB",
      textAlign: TextAlign.center,
      style: kSectionSubheadingTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    );
  }

  Widget _buildLinkColumns(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: _buildLinkColumn(
                context,
                "Team",
                ["First Team", "Reserves", "U19", "U11"],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: _buildLinkColumn(
                context,
                "Matches",
                ["Fixtures", "Tickets", "Results"],
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight / 40,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: _buildLinkColumn(
                context,
                "Kits",
                ["Club kits (Macron)", "Jerseys", "Accessories"],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: _buildLinkColumn(
                context,
                "Others",
                [
                  "Sponsors",
                  "Privacy Policy",
                  "Terms & Conditions",
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLinkColumn(
      BuildContext context, String heading, List<String> links) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: kSectionSubheadingTextStyle.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: screenHeight / 40),
        ...links.map((link) => Padding(
              padding: EdgeInsets.only(bottom: screenHeight / 80),
              child: Text(
                link,
                style: kSectionSubheadingTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            )),
      ],
    );
  }
}
