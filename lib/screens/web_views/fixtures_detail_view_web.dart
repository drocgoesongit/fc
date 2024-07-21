import 'package:fc/components/fixtures_container.dart';
import 'package:fc/components/next_match_container.dart';
import 'package:fc/components/prev_match_container.dart';
import 'package:fc/components/ticket_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/web_views/footer_view_web.dart';
import 'package:flutter/material.dart';

class FixturesDetailViewWeb extends StatelessWidget {
  const FixturesDetailViewWeb({super.key});

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
                  "FIXTURES",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Row(
                  children: [
                    Expanded(flex: 2, child: NextMatchDetailedContainer()),
                    SizedBox(
                      width: screenWidth / 80,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TicketContainer(
                              imageUrl: "assets/images/ticket.png",
                              title: "GET YOUT TICKET",
                              subtitle:
                                  "All the money received from the tickets are used in the development of the club only.",
                              price: "\$2"),
                          SizedBox(
                            height: 16,
                          ),
                          TicketContainer(
                              imageUrl: "assets/images/ticket.png",
                              title: "GET SEASON TICKET",
                              subtitle:
                                  "All the money received from the tickets are used in the development of the club only.",
                              price: "\$2"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Upcoming fixtuers",
                              style: kSectionSubheadingTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 20,
                          ),
                          const FixturesContainer(
                              team1Name: 'Trethoma Blue bird FC',
                              team1IconPath: 'assets/images/barcelona.png',
                              team2Name: 'Trethoma Blue bird FC',
                              team2IconPath: 'assets/images/france.png',
                              matchTime: "12:30",
                              location: 'Spain'),
                          const SizedBox(
                            height: 8,
                          ),
                          const FixturesContainer(
                              team1Name: 'Trethoma Blue bird FC',
                              team1IconPath: 'assets/images/barcelona.png',
                              team2Name: 'Trethoma Blue bird FC',
                              team2IconPath: 'assets/images/france.png',
                              matchTime: "12:30",
                              location: 'Spain'),
                          const SizedBox(
                            height: 8,
                          ),
                          const FixturesContainer(
                              team1Name: 'Trethoma Blue bird FC',
                              team1IconPath: 'assets/images/barcelona.png',
                              team2Name: 'Trethoma Blue bird FC',
                              team2IconPath: 'assets/images/france.png',
                              matchTime: "12:30",
                              location: 'Spain'),
                          const SizedBox(
                            height: 8,
                          ),
                          const FixturesContainer(
                              team1Name: 'Trethoma Blue bird FC',
                              team1IconPath: 'assets/images/barcelona.png',
                              team2Name: 'Trethoma Blue bird FC',
                              team2IconPath: 'assets/images/france.png',
                              matchTime: "12:30",
                              location: 'Spain'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 80,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Previous fixtuers",
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 20,
                        ),
                        PrevMatchDetailedContainer(),
                        const SizedBox(
                          height: 8,
                        ),
                        PrevMatchDetailedContainer(),
                        const SizedBox(
                          height: 8,
                        ),
                        PrevMatchDetailedContainer(),
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
          FooterViewWeb(),
        ],
      ),
    );
  }
}
