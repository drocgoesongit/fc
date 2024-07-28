import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class AboutUsViewMobile extends StatelessWidget {
  const AboutUsViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20, vertical: screenHeight / 20),
        color: backgroundBlackCustomcolor,
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildIntro(screenHeight),
                  SizedBox(height: screenHeight / 40),
                  _buildImageSection(),
                  SizedBox(height: screenHeight / 40),
                  _buildAboutUsText(screenHeight),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("About us", style: mSectionSubheadingTextStyle),
        Text("view all", style: mSectionSubheadingTextStyle),
      ],
    );
  }

  Widget _buildAboutUsText(double screenHeight) {
    return Column(
      children: [
        _buildParagraph(
          "ABC FC was founded in 1920 by a group of local football enthusiasts who shared a passion for the beautiful game. Over the years, the club has grown from a small local team to a competitive force in the Welsh football league system.",
        ),
        SizedBox(height: screenHeight / 60),
        _buildParagraph(
          "ABC FC was founded in 1920 by a group of local football enthusiasts who shared a passion for the beautiful game. Over the years, the club has grown from a small local team to a competitive force in the Welsh football league system.",
        ),
      ],
    );
  }

  Widget _buildIntro(double screenHeight) {
    return Row(
      children: [
        Image.asset("assets/images/FC_Logo.png", height: screenHeight / 8),
        SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chelsea F.C",
              style: kSectionHeadingTextStyle,
            ),
            Text(
              "Est. 1990",
              style: mSectionSubheadingTextStyle.copyWith(fontSize: 14),
            ),
            _buildLocationInfo(),
          ],
        ),
      ],
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: kSectionSubheadingTextStyle,
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildLocationInfo() {
    return Row(
      children: [
        const Icon(
          Icons.location_on_sharp,
          size: 14,
          color: Colors.white,
        ),
        const SizedBox(width: 4),
        Text(
          "Near White lane, Whales (stadium)",
          style: mSectionSubheadingTextStyle.copyWith(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildImageSection() {
    return Container(
      color: Colors.transparent,
      child: Image.asset("assets/images/field.png"),
    );
  }
}
