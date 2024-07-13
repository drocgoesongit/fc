import 'package:fc/screens/mobile_views/parent_view_mobile.dart';
import 'package:fc/screens/tab_views/parent_view_tab.dart';
import 'package:fc/screens/web_views/parent_view_web.dart';
import 'package:flutter/material.dart';

class ParentView extends StatefulWidget {
  const ParentView({super.key});

  @override
  State<ParentView> createState() => _ParentViewState();
}

class _ParentViewState extends State<ParentView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (builder, constraints) {
        if (constraints.maxWidth < 600) {
          return ParentViewMobile();
        } else if (constraints.maxWidth < 1100) {
          return ParentViewTab();
        } else {
          return ParentViewWeb();
        }
      }),
    );
  }
}
