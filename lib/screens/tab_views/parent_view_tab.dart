import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ParentViewTab extends StatefulWidget {
  const ParentViewTab({super.key});

  @override
  State<ParentViewTab> createState() => _ParentViewTabState();
}

class _ParentViewTabState extends State<ParentViewTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent View Tab'),
      ),
      body: Column(
        children: [
          Text(
            'Parent View Tab',
            style: kSectionHeadingTextStyle,
          ),
        ],
      ),
    );
  }
}
