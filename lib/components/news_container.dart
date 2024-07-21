import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String details;

  const NewsCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.details,
  });

  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: const Offset(0, 3),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.imagePath),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: kSectionHeadingTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Details',
                        style: kSectionSubheadingTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                        size: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            if (widget.details.isNotEmpty)
              Text(
                widget.details,
                style: kSectionSubheadingTextStyle.copyWith(fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
    );
  }
}
