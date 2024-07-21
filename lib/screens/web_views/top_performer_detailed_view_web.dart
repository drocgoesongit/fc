import 'package:fc/components/player_card.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/web_views/footer_view_web.dart';
import 'package:flutter/material.dart';

class TopPerformerDetailedViewWeb extends StatefulWidget {
  const TopPerformerDetailedViewWeb({super.key});

  @override
  State<TopPerformerDetailedViewWeb> createState() =>
      _TopPerformerDetailedViewWebState();
}

class _TopPerformerDetailedViewWebState
    extends State<TopPerformerDetailedViewWeb> {
  String selectedCategory = "First Team";

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
            // width: screenWidth,
            // height: screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PLAYERS",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                Row(
                  children: [
                    buildCategoryText("First Team"),
                    const SizedBox(width: 16),
                    buildCategoryText("Reserves"),
                    const SizedBox(width: 16),
                    buildCategoryText("U19"),
                  ],
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Text(
                  "Forwards",
                  style: kSectionSubheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 22),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight / 60,
                    ),
                    Text(
                      "Midfield",
                      style: kSectionSubheadingTextStyle.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                    SizedBox(
                      height: screenHeight / 60,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight / 60,
                    ),
                    Text(
                      "Defence",
                      style: kSectionSubheadingTextStyle.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                    SizedBox(
                      height: screenHeight / 60,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: SquarePlayerCard(
                            name: "Ronaldo",
                            position: "Striker",
                            goal: "9",
                            image: "assets/images/ronaldo.png",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight / 20,
                    )
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

  Widget buildCategoryText(String category) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Text(
        category,
        style: kSectionSubheadingTextStyle.copyWith(
          color: selectedCategory == category ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}
