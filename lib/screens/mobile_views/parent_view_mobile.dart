import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:fc/screens/mobile_views/about_us_view_mobile.dart';
import 'package:fc/screens/mobile_views/footer_view_mobile.dart';
import 'package:fc/screens/mobile_views/home_veiw_mobile.dart';
import 'package:fc/screens/mobile_views/news_view_mobile.dart';
import 'package:fc/screens/mobile_views/shop_view_mobile.dart';
import 'package:fc/screens/mobile_views/staff_view_mobile.dart';
import 'package:fc/screens/mobile_views/top_performer_view_mobile.dart';
import 'package:flutter/material.dart';

class ParentViewMobile extends StatefulWidget {
  const ParentViewMobile({super.key});

  @override
  State<ParentViewMobile> createState() => _ParentViewMobileState();
}

class _ParentViewMobileState extends State<ParentViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundBlackCustomcolor,
        title: Text(
          'DEMOCRATIC FC',
          style: mTabBarHeadingTextStyle,
          textAlign: TextAlign.center,
        ),
        centerTitle: true, // Center the title
        elevation: 0, // Remove the shadow under the AppBar
        surfaceTintColor: Colors.black,
      ),
      body: ListView(
        children: [
          const HomeViewMobile(),
          TopPerformerViewMobile(),
          NewsViewMobile(),
          ShopViewMobile(),
          AboutUsViewMobile(),
          StaffViewMobile(),
          FooterViewMobile(),
        ],
      ),
    );
  }
}
