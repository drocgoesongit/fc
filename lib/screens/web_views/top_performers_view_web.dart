import 'package:fc/components/player_card.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class TopPerformersViewWeb extends StatelessWidget {
  const TopPerformersViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 40,
          vertical: MediaQuery.of(context).size.height / 35,
        ),
        color: backgroundBlackCustomcolor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "TOP PERFORMERS",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 80),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mid Field',
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 20),
                      ),
                      SizedBox(height: 16),
                      PlayerCard(
                        name: "Kevin DeBruyne",
                        position: 'Center Attacking Midfielder',
                        goal: "8",
                        image: 'assets/images/kevin.png',
                      ),
                      SizedBox(height: 12),
                      PlayerCard(
                        name: "Haaland",
                        position: 'Striker',
                        goal: "8",
                        image: 'assets/images/haaland.png',
                      ),
                      SizedBox(height: 12),
                      PlayerCard(
                        name: "Haaland",
                        position: 'Striker',
                        goal: "8",
                        image: 'assets/images/haaland.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                CusDivider(),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forward',
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 20),
                      ),
                      SizedBox(height: 16),
                      PlayerCard(
                        name: "Cristiano Ronaldo",
                        position: 'Striker',
                        goal: "8",
                        image: 'assets/images/cristiano.png',
                      ),
                      SizedBox(height: 12),
                      PlayerCard(
                        name: "Haaland",
                        position: 'Striker',
                        goal: "8",
                        image: 'assets/images/haaland.png',
                      ),
                      SizedBox(height: 12),
                      PlayerCard(
                        name: "Haaland",
                        position: 'Striker',
                        goal: "8",
                        image: 'assets/images/haaland.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                CusDivider(),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Defence',
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 20),
                      ),
                      SizedBox(height: 16),
                      PlayerCard(
                        name: "Max Aarons",
                        position: 'Defender',
                        goal: "8",
                        image: 'assets/images/max.png',
                      ),
                      SizedBox(height: 12),
                      PlayerCard(
                        name: "Max Aarons",
                        position: 'Defender',
                        goal: "8",
                        image: 'assets/images/max.png',
                      ),
                      SizedBox(height: 12),
                      PlayerCard(
                        name: "Max Aarons",
                        position: 'Defender',
                        goal: "8",
                        image: 'assets/images/max.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
