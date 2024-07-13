import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/web_views/home_view_web.dart';
import 'package:fc/screens/web_views/top_performers_view_web.dart';
import 'package:fc/views/home_view.dart';
import 'package:flutter/material.dart';

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
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    title: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const TabBar(
                        dividerHeight: 0,
                        tabs: [
                          Text("Home"),
                          Text("Top Performers"),
                          Text("About Us"),
                          Text("Contact Us"),
                        ],
                      ),
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
                  children: [HomeViewWeb(), TopPerformersViewWeb()],
                ),
                ListView(
                  children: [
                    TopPerformersViewWeb(),
                  ],
                ),
                ListView(
                  children: [
                    HomeViewWeb(),
                  ],
                ),
                Container(
                  child: Center(
                    child: Text("About us section",
                        style: kSectionHeadingTextStyle),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
