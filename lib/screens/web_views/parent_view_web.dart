import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/web_views/about_us_detail_view_web.dart';
import 'package:fc/screens/web_views/about_us_view_web.dart';
import 'package:fc/screens/web_views/fixtures_detail_view_web.dart';
import 'package:fc/screens/web_views/footer_view_web.dart';
import 'package:fc/screens/web_views/home_view_web.dart';
import 'package:fc/screens/web_views/news_detail_view_web.dart';
import 'package:fc/screens/web_views/news_view_web.dart';
import 'package:fc/screens/web_views/shop_view_web.dart';
import 'package:fc/screens/web_views/sponsors_detail_view_web.dart';
import 'package:fc/screens/web_views/sponsors_view_web.dart';
import 'package:fc/screens/web_views/staff_view_web.dart';
import 'package:fc/screens/web_views/top_performer_detailed_view_web.dart';
import 'package:fc/screens/web_views/top_performers_view_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ParentViewWeb extends StatefulWidget {
  const ParentViewWeb({super.key});

  @override
  State<ParentViewWeb> createState() => _ParentViewWebState();
}

class _ParentViewWebState extends State<ParentViewWeb> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    backgroundColor: Colors.black,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: const TabBar(
                            dividerColor: Colors.grey,
                            indicatorColor: Colors.redAccent,
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.white,
                            
                            dividerHeight: 0,
                            tabs: [
                              Text(
                                "Home",
                                style: kTabBarHeadingTextStyle,
                              ),
                              Text(
                                "Teams",
                                style: kTabBarHeadingTextStyle,
                              ),
                              Text(
                                "All Fixtures",
                                style: kTabBarHeadingTextStyle,
                              ),
                              Text(
                                "News",
                                style: kTabBarHeadingTextStyle,
                              ),
                              Text(
                                "Sponsors",
                                style: kTabBarHeadingTextStyle,
                              ),
                              Text(
                                "About Us",
                                style: kTabBarHeadingTextStyle,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
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
                        )
                      ],
                    ),
                    floating: true,
                    pinned: false,
                    snap: true,
                    // flexibleSpace: FlexibleSpaceBar(
                    //   background: Container(
                    //     color: Colors.blue[100],
                    //   ),
                    // ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                ListView(
                  children: const [
                    HomeViewWeb(),
                    TopPerformersViewWeb(),
                    SponsorsViewWeb(),
                    NewsViewWeb(),
                    ShopViewWeb(),
                    AboutUsViewWeb(),
                    StaffViewWeb(),
                    FooterViewWeb()
                  ],
                ),
                ListView(
                  children: const [
                    TopPerformerDetailedViewWeb(),
                  ],
                ),
                ListView(
                  children: const [
                    FixturesDetailViewWeb(),
                  ],
                ),
                ListView(
                  children: const [
                    NewsDetailViewWeb(),
                  ],
                ),
                ListView(
                  children: const [
                    SponsorsDetailViewWeb(),
                  ],
                ),
                ListView(
                  children: const [
                    AboutUsDetailViewWeb(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
