import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fc/components/fixtures_container.dart';
import 'package:fc/components/leaderboard_container.dart';
import 'package:fc/components/next_match_container.dart';
import 'package:fc/components/prev_match_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: backgroundBlackCustomcolor,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 40,
          vertical: MediaQuery.of(context).size.height / 20,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/FC_Logo.png"),
                    const Text(
                      "Chelsea F.C",
                      style: kSectionHeadingTextStyle,
                    ),
                    Text(
                      "Est. 1990",
                      style: kSectionSubheadingTextStyle.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 80,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          height: 20,
                          width: 20,
                          "assets/images/instagram.svg",
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 100,
                        ),
                        SvgPicture.asset(
                          height: 20,
                          width: 20,
                          "assets/images/facebook.svg",
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 100,
                        ),
                        SvgPicture.asset(
                          height: 20,
                          width: 20,
                          "assets/images/X.svg",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const NextMatchContainer(),
                    const SizedBox(
                      height: 14,
                    ),
                    Leaderboard()
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 60,
                ),
                Expanded(
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.4,
                          viewportFraction: 1.0,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 4),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                        items: [
                          'assets/images/carousel.png',
                          'assets/images/carousel.png',
                          'assets/images/carousel.png',
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Image.asset(
                                i,
                                fit: BoxFit.contain,
                              );
                            },
                          );
                        }).toList(),
                      ),

                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height / 100,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming fixtuers",
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "View all",
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
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
                          team1Name: 'Real Madrid',
                          team1IconPath: 'assets/images/madrid.png',
                          team2Name: 'Titans',
                          team2IconPath: 'assets/images/titans.png',
                          matchTime: "15:20",
                          location: 'Russia'),
                      const SizedBox(
                        height: 8,
                      ),
                      const FixturesContainer(
                          team1Name: 'Barcelona',
                          team1IconPath: 'assets/images/barcelona.png',
                          team2Name: 'France',
                          team2IconPath: 'assets/images/france.png',
                          matchTime: "12:30",
                          location: 'London'),
                      const SizedBox(
                        height: 8,
                      ),
                      const FixturesContainer(
                          team1Name: 'Real Madrid',
                          team1IconPath: 'assets/images/madrid.png',
                          team2Name: 'Titans',
                          team2IconPath: 'assets/images/titans.png',
                          matchTime: "15:20",
                          location: 'Russia'),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 60,
                ),
                Column(
                  children: [
                    PrevMatchContainer(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
