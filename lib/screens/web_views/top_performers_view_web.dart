import 'package:flutter/material.dart';

class TopPerformersViewWeb extends StatelessWidget {
  const TopPerformersViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Text(
            "Top Performers View Web",
            style: TextStyle(fontSize: 24, fontFamily: 'Bebas'),
          ),
        ));
  }
}
