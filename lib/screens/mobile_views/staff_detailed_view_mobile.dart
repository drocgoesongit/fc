import 'package:fc/components/staff_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/mobile_views/footer_view_mobile.dart';
import 'package:flutter/material.dart';

class StaffDetailedViewMobile extends StatelessWidget {
  const StaffDetailedViewMobile({super.key});

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
          'Managers & Staffs',
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
                vertical: screenHeight / 60,
              ),
              color: backgroundBlackCustomcolor,
              width: screenWidth,
              height: screenHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Managers & Staffs", style: mSectionSubheadingTextStyle),
                  const SizedBox(height: 18),
                  Expanded(
                    child: ListView.builder(
                      itemCount: (staffMembers.length / 2).ceil(),
                      itemBuilder: (context, index) {
                        final int startIndex = index * 2;
                        final int endIndex =
                            (index * 2 + 2).clamp(0, staffMembers.length);
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = startIndex; i < endIndex; i++)
                                Expanded(
                                  child: StaffContainer(
                                    imagePath: staffMembers[i]["imagePath"]!,
                                    name: staffMembers[i]["name"]!,
                                    post: staffMembers[i]["post"]!,
                                  ),
                                ),
                              if (endIndex - startIndex ==
                                  1) // Add a spacer if there's only one item in the row
                                const Expanded(child: SizedBox()),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            FooterViewMobile()
          ],
        ),
      ),
    );
  }
}
