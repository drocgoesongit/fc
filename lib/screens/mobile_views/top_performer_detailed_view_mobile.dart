import 'package:flutter/material.dart';
import 'package:fc/components/player_card.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/mobile_views/footer_view_mobile.dart';

class TopPerformerDetailedViewMobile extends StatefulWidget {
  const TopPerformerDetailedViewMobile({super.key});

  @override
  State<TopPerformerDetailedViewMobile> createState() =>
      _TopPerformerDetailedViewMobileState();
}

class _TopPerformerDetailedViewMobileState
    extends State<TopPerformerDetailedViewMobile> {
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
          'Top Performers',
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
                vertical: screenHeight / 35,
              ),
              color: backgroundBlackCustomcolor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PLAYERS",
                    style: kSectionHeadingTextStyle.copyWith(
                      fontSize: screenWidth / 10,
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  Row(
                    children: [
                      buildCategoryText("First Team"),
                      SizedBox(
                        width: 12,
                      ),
                      buildCategoryText("Reserves"),
                      SizedBox(
                        width: 12,
                      ),
                      buildCategoryText("U19"),
                    ],
                  ),
                  SizedBox(height: screenHeight / 40),
                  Text(
                    selectedCategory,
                    style: kSectionSubheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth / 20,
                    ),
                  ),
                  SizedBox(height: screenHeight / 60),
                  buildPlayerCards(screenHeight, screenWidth),
                ],
              ),
            ),
            FooterViewMobile(),
          ],
        ),
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
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildPlayerCards(double screenHeight, double screenWidth) {
    List<Map<String, String>> players = playerData[selectedCategory] ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < players.length; i += 2) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int j = i; j < i + 2 && j < players.length; j++) ...[
                Flexible(
                  child: SquarePlayerCard(
                    name: players[j]["name"]!,
                    position: players[j]["position"]!,
                    goal: players[j]["goal"]!,
                    image: players[j]["image"]!,
                  ),
                ),
                if (j < i + 1 && j < players.length - 1) SizedBox(width: 8),
              ],
            ],
          ),
          if (i + 2 < players.length) SizedBox(height: 12),
        ],
        SizedBox(
          height: screenHeight / 20,
        )
      ],
    );
  }
}
