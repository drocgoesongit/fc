import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class PrevMatchContainer extends StatelessWidget {
  const PrevMatchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Previous Match',
                style: kSectionSubheadingTextStyle.copyWith(
                    color: Colors.redAccent, fontSize: 16),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 11,
              ),
              Icon(
                Icons.arrow_forward_sharp,
                color: Colors.redAccent,
                size: 14,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/FC_Logo.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Chelsea",
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 80,
                    ),
                    // ignore: prefer_const_constructors
                    Column(
                      children: const [
                        Text(
                          'Premier League',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '2 : 1',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.orangeAccent,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "40:00",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 80,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/FC_Logo.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Leicester C",
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//

class PrevMatchDetailedContainer extends StatelessWidget {
  const PrevMatchDetailedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 40,
          vertical: MediaQuery.of(context).size.height / 40),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/FC_Logo.png',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Chelsea",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Cristiano Ronaldo 9’",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Cristiano Ronaldo 9’",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 80,
              ),
              // ignore: prefer_const_constructors
              Column(
                children: const [
                  Text(
                    'Premier League',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '2 : 1',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 80,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/FC_Logo.png',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Chelsea",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Cristiano Ronaldo 9’",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Cristiano Ronaldo 9’",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
