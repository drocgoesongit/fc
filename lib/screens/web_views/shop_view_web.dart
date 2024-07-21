import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fc/components/time_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopViewWeb extends StatefulWidget {
  const ShopViewWeb({super.key});

  @override
  _ShopViewWebState createState() => _ShopViewWebState();
}

class _ShopViewWebState extends State<ShopViewWeb> {
  final CarouselController _carouselController = CarouselController();
  int _currentSlideIndex = 0;
  late Timer _timer;
  late Duration _remainingTime;

  @override
  void initState() {
    super.initState();
    // Set the target end time
    final DateTime targetTime =
        DateTime.now().add(const Duration(days: 4)); // Example: 1 day from now

    // Update remaining time
    _remainingTime = targetTime.difference(DateTime.now());

    // Timer to update remaining time every second
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _remainingTime = targetTime.difference(DateTime.now());

        // If the time is up, cancel the timer
        if (_remainingTime.isNegative) {
          _timer.cancel();
          _remainingTime = Duration.zero;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Extract screen dimensions
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth / 40,
          vertical: screenHeight / 35,
        ),
        color: backgroundBlackCustomcolor,
        width: screenWidth,
        // height: screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "CLUB KITS",
                  style: kSectionHeadingTextStyle.copyWith(fontSize: 50),
                ),
                const SizedBox(width: 16),
                const CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Buy your club jersey from our kit sponsor at very affordable prices. Avail limited time offer for members only.",
                        style: kSectionSubheadingTextStyle,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Hurry, Before It’s Too Late!",
                        style: kSectionSubheadingTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          TimeContainer(
                            label: "Days",
                            value: (_remainingTime.inDays)
                                .toString()
                                .padLeft(2, '0'),
                          ),
                          const SizedBox(width: 8),
                          TimeContainer(
                            label: "Hrs",
                            value: ((_remainingTime.inHours % 24))
                                .toString()
                                .padLeft(2, '0'),
                          ),
                          const SizedBox(width: 8),
                          TimeContainer(
                            label: "Min",
                            value: ((_remainingTime.inMinutes % 60))
                                .toString()
                                .padLeft(2, '0'),
                          ),
                          const SizedBox(width: 8),
                          TimeContainer(
                            label: "Sec",
                            value: ((_remainingTime.inSeconds % 60))
                                .toString()
                                .padLeft(2, '0'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(
                          "Get Now",
                          style: kSectionSubheadingTextStyle.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: screenHeight * 0.4,
                          enlargeCenterPage: false,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.4,
                          autoPlayInterval: const Duration(seconds: 3),
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentSlideIndex = index;
                            });
                          },
                        ),
                        carouselController: _carouselController,
                        items: [
                          'assets/images/kit1.png',
                          'assets/images/kit2.png',
                          'assets/images/kit3.png',
                        ].map((imagePath) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Image.asset(
                                imagePath,
                                fit: BoxFit.contain,
                              );
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                      AnimatedSmoothIndicator(
                        activeIndex: _currentSlideIndex,
                        count: 3,
                        effect: const WormEffect(
                          dotWidth: 10,
                          dotHeight: 10,
                          activeDotColor: Colors.white,
                          dotColor: Colors.grey,
                        ),
                        onDotClicked: (index) {
                          _carouselController.animateToPage(index);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
