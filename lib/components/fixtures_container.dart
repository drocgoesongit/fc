import 'package:flutter/material.dart';
import 'package:fc/constants/text_styles.dart';

class FixturesContainer extends StatefulWidget {
  final String team1Name;
  final String team1IconPath;
  final String team2Name;
  final String team2IconPath;
  final String matchTime;
  final String location;

  const FixturesContainer({
    super.key,
    required this.team1Name,
    required this.team1IconPath,
    required this.team2Name,
    required this.team2IconPath,
    required this.matchTime,
    required this.location,
  });

  @override
  _FixturesContainerState createState() => _FixturesContainerState();
}

class _FixturesContainerState extends State<FixturesContainer> {
  bool isWishlist = false;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, // handle tap if necessary
      onHover: (hovering) {
        setState(() {
          isHovered = hovering;
        });
      },
      
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: BoxDecoration(
          color: isHovered ? Colors.white : Colors.grey.withOpacity(0.4),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 7,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Image.asset(
                          widget.team1IconPath, // replace with actual path
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          widget.team1Name,
                          overflow: TextOverflow.ellipsis,
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(width: 4),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          height: 10,
                          width: 1,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'VS',
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          height: 10,
                          width: 1,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4), //
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Image.asset(
                          widget.team2IconPath, // replace with actual path
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          widget.team2Name,
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(Icons.access_time, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    widget.matchTime,
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(Icons.location_on, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    widget.location,
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                // handle view details action
              },
              child: Row(
                children: [
                  
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.orange,
                    size: 12,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
