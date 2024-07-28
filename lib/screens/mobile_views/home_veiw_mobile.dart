import 'package:carousel_slider/carousel_slider.dart';
import 'package:fc/components/fixtures_container.dart';
import 'package:fc/components/next_match_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: backgroundBlackCustomcolor,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 20,
          vertical: MediaQuery.of(context).size.height / 60,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.2,
                      viewportFraction: 1.01,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  MobileNextMatchContainer(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming fixtuers",
                          style: mSectionSubheadingTextStyle),
                      Text("View all", style: mSectionSubheadingTextStyle),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MobileFixturesContainer(
                      team1Name: 'Trethoma Blue bird FC',
                      team1IconPath: 'assets/images/barcelona.png',
                      team2Name: 'Trethoma Blue bird FC',
                      team2IconPath: 'assets/images/france.png',
                      matchTime: "12:30",
                      location: 'Spain'),
                  const SizedBox(
                    height: 8,
                  ),
                  const MobileFixturesContainer(
                      team1Name: 'Real Madrid',
                      team1IconPath: 'assets/images/madrid.png',
                      team2Name: 'Titans',
                      team2IconPath: 'assets/images/titans.png',
                      matchTime: "15:20",
                      location: 'Russia'),
                  const SizedBox(
                    height: 8,
                  ),
                  const MobileFixturesContainer(
                      team1Name: 'Barcelona',
                      team1IconPath: 'assets/images/barcelona.png',
                      team2Name: 'France',
                      team2IconPath: 'assets/images/france.png',
                      matchTime: "12:30",
                      location: 'London'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
