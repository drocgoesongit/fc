import 'package:fc/components/staff_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/web_views/footer_view_web.dart';
import 'package:flutter/material.dart';

class AboutUsDetailViewWeb extends StatelessWidget {
  const AboutUsDetailViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final List<Map<String, String>> staffMembers = [
      {
        "imagePath": "assets/images/staff1.png",
        "name": "Joe Bridges",
        "post": "First Team Coach"
      },
      {
        "imagePath": "assets/images/staff2.png",
        "name": "Jane Doe",
        "post": "Assistant Coach"
      },
      {
        "imagePath": "assets/images/staff1.png",
        "name": "John Smith",
        "post": "Fitness Coach"
      },
      {
        "imagePath": "assets/images/staff2.png",
        "name": "Emily Clark",
        "post": "Physiotherapist"
      },
      {
        "imagePath": "assets/images/staff2.png",
        "name": "James Brown",
        "post": "Goalkeeping Coach"
      },
      {
        "imagePath": "assets/images/staff1.png",
        "name": "Laura White",
        "post": "Team Doctor"
      },
      {
        "imagePath": "assets/images/staff1.png",
        "name": "Laura White",
        "post": "Team Doctor"
      },
      {
        "imagePath": "assets/images/staff1.png",
        "name": "Laura White",
        "post": "Team Doctor"
      },
    ];

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
                  "ABOUT US",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                AspectRatio(
                  aspectRatio:
                      16 / 9, // You can adjust the aspect ratio as needed
                  child: Image.asset(
                    "assets/images/field.png",
                    fit: BoxFit.cover,
                    width:
                        double.infinity, // Ensures the image takes full width
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                Text(
                  "Trethoma FC",
                  style: kSectionSubheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Text(
                  "ABC FC was founded in 1920 by a group of local football enthusiasts who shared a passion for the beautiful game. Over the years, the club has grown from a small local team to a competitive force in the Welsh football league system.",
                  style: kSectionSubheadingTextStyle.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: screenHeight / 80,
                ),
                Text(
                  "ABC FC was founded in 1920 by a group of local football enthusiasts who shared a passion for the beautiful game. Over the years, the club has grown from a small local team to a competitive force in the Welsh football league system.",
                  style: kSectionSubheadingTextStyle.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Saint James Park, Wales",
                      style: kSectionSubheadingTextStyle.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight / 10,
                ),
                Text(
                  "CLUB BOARD",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                for (int i = 0; i < staffMembers.length; i += 4)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int j = 0;
                            j < 4 && i + j < staffMembers.length;
                            j++)
                          StaffContainer(
                            imagePath: staffMembers[i + j]["imagePath"]!,
                            name: staffMembers[i + j]["name"]!,
                            post: staffMembers[i + j]["post"]!,
                          ),
                      ],
                    ),
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
