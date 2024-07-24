import 'package:flutter/material.dart';
import 'package:fc/constants/text_styles.dart';

class TicketContainer extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;

  const TicketContainer({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  _TicketContainerState createState() => _TicketContainerState();
}

class _TicketContainerState extends State<TicketContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _updateHoverState(true),
      onExit: (_) => _updateHoverState(false),
      cursor: _isHovered ? SystemMouseCursors.click : SystemMouseCursors.basic,

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.black,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 12.0,
                    spreadRadius: 4.0,
                  )
                ]
              : [],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.imageUrl,
                  height: 80.0,
                  width: 80.0,
                  fit: BoxFit.cover,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 26, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          widget.subtitle,
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 1.0,
                  height: 110.0,
                  child: CustomPaint(
                    painter: DottedLinePainter(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(widget.price,
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 34, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("PER PERSON",
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _updateHoverState(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    const double dashHeight = 12.0, dashSpace = 4.0;
    double startY = 0.0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0.0, startY),
        Offset(0.0, startY + dashHeight),
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(DottedLinePainter oldDelegate) => false;
}
