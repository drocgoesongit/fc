import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Limited Time Offer!!',
                    style: mSectionSubheadingTextStyle),
                const SizedBox(height: 8),
                Text(
                  'Huge discount sales going on for the members by our kit supplier. Buy now to avail exciting offers!',
                  style: mNormalTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 28,
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Add your onPressed action here
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
