import 'package:flutter/material.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:url_launcher/url_launcher.dart'; //

class SponsorContainer extends StatefulWidget {
  const SponsorContainer({super.key});

  @override
  _SponsorContainerState createState() => _SponsorContainerState();
}

class _SponsorContainerState extends State<SponsorContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (_) => _onHover(true),
        onExit: (_) => _onHover(false),
        cursor: SystemMouseCursors.click,

        child: AnimatedScale(
          scale: _isHovered ? 1.03 : 1.0,
          duration: Duration(milliseconds: 150),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 150),
            padding: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/alex.png', // Replace with your image path
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/sponsor.png', // Replace with your image path
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Alexandro Garnacho', // Replace with your desired text
                        style: kSectionSubheadingTextStyle.copyWith(
                          fontSize: 16,
                        )),
                    SizedBox(width: 4),
                    Text('Shield Breakers', // Replace with your desired text
                        style: kSectionSubheadingTextStyle.copyWith(
                          fontSize: 16,
                        )),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 40),
                    Text(
                      'Player Sponsor',
                      style: kSectionSubheadingTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 18),
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
                                fontSize: 10),
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white,
                            size: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
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

class SponsorsDetailContainer extends StatefulWidget {
  final String image;
  final String labelText;
  final String viewSiteUrl;

  const SponsorsDetailContainer({
    super.key,
    required this.image,
    required this.labelText,
    required this.viewSiteUrl,
  });

  @override
  _SponsorsDetailContainerState createState() =>
      _SponsorsDetailContainerState();
}

class _SponsorsDetailContainerState extends State<SponsorsDetailContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.black,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10.0, spreadRadius: 1.0)
                ]
              : [],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                // Adjust height as needed
              ),
            ),
            SizedBox(height: 18),
            Text(
              widget.labelText,
              style: kSectionSubheadingTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // _launchURL(widget.viewSiteUrl);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'View Site',
                    style: kSectionSubheadingTextStyle.copyWith(fontSize: 14),
                  ),
                  SizedBox(width: 4), // Space between text and icon
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 14, // Adjust icon size if needed
                    color: Colors.white,
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle the error or show a message
      print("Could not open URL: $url");
    }
  }
}
