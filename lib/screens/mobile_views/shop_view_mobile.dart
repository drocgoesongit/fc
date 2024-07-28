import 'package:fc/components/offer_container.dart';
import 'package:fc/constants/custom_colors.dart';
import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ShopViewMobile extends StatelessWidget {
  const ShopViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Sample list of images for the grid view
    final List<String> images = [
      'assets/images/kit1.png',
      'assets/images/kit2.png',
      'assets/images/kit2.png',
      'assets/images/kit1.png',
      // Add more images as needed
    ];

    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20, vertical: screenHeight / 60),
        color: backgroundBlackCustomcolor,
        width: screenWidth,
        height: screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Club kit Shop", style: mSectionSubheadingTextStyle),
                Text("view detail", style: mSectionSubheadingTextStyle),
              ],
            ),
            SizedBox(
              height: screenHeight / 80,
            ),
            const OfferContainer(),
            SizedBox(
              height: screenHeight / 60,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 12, // Horizontal space between grid items
                  mainAxisSpacing: 12, // Vertical space between grid items
                  childAspectRatio: 0.75, // Adjust the aspect ratio as needed
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
