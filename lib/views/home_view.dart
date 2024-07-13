import 'package:fc/screens/mobile_views/home_veiw_mobile.dart';
import 'package:fc/screens/tab_views/home_view_tab.dart';
import 'package:fc/screens/web_views/home_view_web.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return HomeViewMobile();
      } else if (constraints.maxWidth < 900) {
        return HomeViewTab();
      } else {
        return HomeViewWeb();
      }
    });
  }
}
