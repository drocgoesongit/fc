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

  final Map<String, List<Map<String, String>>> playerData = {
    "First Team": [
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
    ],
    "Reserves": [
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
    ],
    "U19": [
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
      {
        "name": "Ronaldo",
        "position": "Striker",
        "goal": "9",
        "image": "assets/images/ronaldo.png"
      },
    ]
  };

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
                  selectedCategory,
                  style: kSectionSubheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 22),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                buildPlayerCards(screenHeight),
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

  Widget buildPlayerCards(double screenHeight) {
    List<Map<String, String>> players = playerData[selectedCategory] ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < players.length; i += 4) ...[
          Row(
            children: [
              for (int j = i; j < i + 4 && j < players.length; j++) ...[
                Expanded(
                  child: SquarePlayerCard(
                    name: players[j]["name"]!,
                    position: players[j]["position"]!,
                    goal: players[j]["goal"]!,
                    image: players[j]["image"]!,
                  ),
                ),
                if (j < i + 3 && j < players.length - 1) SizedBox(width: 12),
              ],
            ],
          ),
          if (i + 4 < players.length) SizedBox(height: 12),
        ],
        SizedBox(
          height: screenHeight / 20,
        )
      ],
    );
  }
}
