import 'package:fc/components/player_card.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/mobile_views/top_performer_detailed_view_mobile.dart';
import 'package:flutter/material.dart';

class TopPerformerViewMobile extends StatelessWidget {
  const TopPerformerViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 20,
          vertical: MediaQuery.of(context).size.height / 60,
        ),
        color: backgroundBlackCustomcolor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Performers", style: mSectionSubheadingTextStyle),
                InkWell(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TopPerformerDetailedViewMobile()),
                        ),
                    child:
                        Text("View all", style: mSectionSubheadingTextStyle)),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 60),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mid Field',
                      style: kSectionSubheadingTextStyle.copyWith(fontSize: 20),
                    ),
                    SizedBox(height: 16),
                    MobilePlayerCard(
                      name: "Kevin DeBruyne",
                      position: 'Center Attacking Midfielder',
                      goal: "8",
                      image: 'assets/images/kevin.png',
                    ),
                    SizedBox(height: 12),
                    MobilePlayerCard(
                      name: "Haaland",
                      position: 'Striker',
                      goal: "8",
                      image: 'assets/images/haaland.png',
                    ),
                    SizedBox(height: 12),
                    MobilePlayerCard(
                      name: "Haaland",
                      position: 'Striker',
                      goal: "8",
                      image: 'assets/images/haaland.png',
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Forward',
                      style: kSectionSubheadingTextStyle.copyWith(fontSize: 20),
                    ),
                    SizedBox(height: 16),
                    MobilePlayerCard(
                      name: "Cristiano Ronaldo",
                      position: 'Striker',
                      goal: "8",
                      image: 'assets/images/cristiano.png',
                    ),
                    SizedBox(height: 12),
                    MobilePlayerCard(
                      name: "Haaland",
                      position: 'Striker',
                      goal: "8",
                      image: 'assets/images/haaland.png',
                    ),
                    SizedBox(height: 12),
                    MobilePlayerCard(
                      name: "Haaland",
                      position: 'Striker',
                      goal: "8",
                      image: 'assets/images/haaland.png',
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Defence',
                      style: mSectionSubheadingTextStyle.copyWith(fontSize: 20),
                    ),
                    SizedBox(height: 16),
                    MobilePlayerCard(
                      name: "Max Aarons",
                      position: 'Defender',
                      goal: "8",
                      image: 'assets/images/max.png',
                    ),
                    SizedBox(height: 12),
                    MobilePlayerCard(
                      name: "Max Aarons",
                      position: 'Defender',
                      goal: "8",
                      image: 'assets/images/max.png',
                    ),
                    SizedBox(height: 12),
                    MobilePlayerCard(
                      name: "Max Aarons",
                      position: 'Defender',
                      goal: "8",
                      image: 'assets/images/max.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
