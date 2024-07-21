import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class StaffContainer extends StatefulWidget {
  final String imagePath;
  final String name;
  final String post;

  const StaffContainer({
    super.key,
    required this.imagePath,
    required this.name,
    required this.post,
  });

  @override
  _StaffContainerState createState() => _StaffContainerState();
}

class _StaffContainerState extends State<StaffContainer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 300),
        tween: ColorTween(
          begin: Colors.transparent,
          end: isHovered ? Colors.transparent : Colors.transparent,
        ),
        builder: (context, color, child) {
          return Container(
            padding: const EdgeInsets.all(8),
            width: 300,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                          color: Colors.black, blurRadius: 10, spreadRadius: 2)
                    ]
                  : [],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    widget.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.name,
                  style: kSectionSubheadingTextStyle,
                ),
                const SizedBox(height: 4),
                Text(
                  widget.post,
                  style: kSectionSubheadingTextStyle.copyWith(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
