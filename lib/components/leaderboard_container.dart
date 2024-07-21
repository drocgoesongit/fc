import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Leaderboard',
                    style: kSectionSubheadingTextStyle,
                  ),
                  Text(
                    'England',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 10,
              ),
              const Icon(
                Icons.arrow_forward_sharp,
                color: Colors.white,
                size: 14,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Colors.black),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Team",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/france.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Liverpool",
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/france.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Liverpool",
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/france.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Liverpool",
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  Column(
                    children: [
                      Text("D",
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 90,
                  ),
                  Column(
                    children: [
                      Text("L",
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 90,
                  ),
                  Column(
                    children: [
                      Text("Ga",
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 90,
                  ),
                  Column(
                    children: [
                      Text("Gd",
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 90,
                  ),
                  Column(
                    children: [
                      Text("Pts",
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        "40",
                        style:
                            kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
