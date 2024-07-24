import 'package:flutter/material.dart';
import 'package:fc/constants/text_styles.dart';

class PlayerCard extends StatefulWidget {
  final String image;
  final String name;
  final String position;
  final String goal;
  const PlayerCard(
      {super.key,
      required this.name,
      required this.position,
      required this.goal,
      required this.image});

  @override
  _PlayerCardState createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      cursor: SystemMouseCursors.click,
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1,
        duration: Duration(milliseconds: 150),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 150),
          padding: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: _isHovered ? Colors.black54: Colors.black,
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          offset: Offset(0, 4),
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                  ]
                : [],
          ),
          child: Row(
            children: [
              Container(
                
                decoration: const BoxDecoration(
                  
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: Colors.white,
                ),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: kSectionSubheadingTextStyle.copyWith(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.position,
                      style: kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.goal,
                      style: kSectionSubheadingTextStyle.copyWith(
                          fontSize: 28, fontWeight: FontWeight.bold)),
                  Text("Goals",
                      style: kSectionSubheadingTextStyle.copyWith(
                        fontSize: 16,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
//

class SquarePlayerCard extends StatefulWidget {
  final String image;
  final String name;
  final String position;
  final String goal;
  const SquarePlayerCard(
      {super.key,
      required this.name,
      required this.position,
      required this.goal,
      required this.image});

  @override
  _SquarePlayerCardState createState() => _SquarePlayerCardState();
}

class _SquarePlayerCardState extends State<SquarePlayerCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      cursor: SystemMouseCursors.click,

      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        // padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.black,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                ]
              : [],
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                color: Colors.white,
              ),
              child: Image.asset(
                widget.image,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.position,
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(widget.goal,
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      Text("Goals",
                          style: kSectionSubheadingTextStyle.copyWith(
                            fontSize: 16,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}

//

class CusDivider extends StatelessWidget {
  const CusDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 1,
      color: Colors.white,
    );
  }
}
