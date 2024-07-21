import 'package:fc/components/staff_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class StaffViewWeb extends StatelessWidget {
  const StaffViewWeb({super.key});

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
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth / 40,
          vertical: screenHeight / 35,
        ),
        color: backgroundBlackCustomcolor,
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MANAGERS & STAFF",
              style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
            ),
            const SizedBox(height: 18),
            for (int i = 0; i < staffMembers.length; i += 4)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int j = 0; j < 4 && i + j < staffMembers.length; j++)
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
    );
  }
}
