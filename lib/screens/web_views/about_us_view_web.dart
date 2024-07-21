import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class AboutUsViewWeb extends StatelessWidget {
  const AboutUsViewWeb({super.key});

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
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: _buildAboutUsText(screenHeight),
                  ),
                  SizedBox(width: screenWidth / 40),
                  Expanded(
                    flex: 3,
                    child: _buildImageSection(),
                  ),
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
      children: [
        Text(
          "ABOUT US",
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
    );
  }

  Widget _buildAboutUsText(double screenHeight) {
    return Column(
      children: [
        Image.asset("assets/images/FC_Logo.png"),
        const SizedBox(height: 8),
        const Text(
          "Chelsea F.C",
          style: kSectionHeadingTextStyle,
        ),
        Text(
          "Est. 1990",
          style: kSectionSubheadingTextStyle.copyWith(fontSize: 14),
        ),
        SizedBox(height: screenHeight / 50),
        _buildParagraph(
          "ABC FC was founded in 1920 by a group of local football enthusiasts who shared a passion for the beautiful game. Over the years, the club has grown from a small local team to a competitive force in the Welsh football league system.",
        ),
        SizedBox(height: screenHeight / 60),
        _buildParagraph(
          "ABC FC was founded in 1920 by a group of local football enthusiasts who shared a passion for the beautiful game. Over the years, the club has grown from a small local team to a competitive force in the Welsh football league system.",
        ),
        SizedBox(height: screenHeight / 40),
        _buildLocationInfo(),
      ],
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: kSectionSubheadingTextStyle,
    );
  }

  Widget _buildLocationInfo() {
    return Row(
      children: [
        const Icon(
          Icons.location_on_sharp,
          size: 12,
          color: Colors.white,
        ),
        const SizedBox(width: 4),
        Text(
          "Near White lane, Whales (stadium)",
          style: kSectionSubheadingTextStyle.copyWith(fontSize: 14),
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
