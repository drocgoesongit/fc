import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class NextMatchContainer extends StatelessWidget {
  const NextMatchContainer({super.key});

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
                'Next Match',
                style: kSectionSubheadingTextStyle.copyWith(
                    fontSize: 16, color: Colors.redAccent),
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 9),
              Icon(
                Icons.arrow_forward_sharp,
                color: Colors.redAccent,
                size: 14,
              )
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
                          'VS',
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

//NextMatchDeatiled Container

class NextMatchDetailedContainer extends StatefulWidget {
  const NextMatchDetailedContainer({super.key});

  @override
  _NextMatchDetailedContainerState createState() =>
      _NextMatchDetailedContainerState();
}

class _NextMatchDetailedContainerState
    extends State<NextMatchDetailedContainer> {
  late Timer _timer;
  Duration _timeDifference = Duration.zero;

  @override
  void initState() {
    super.initState();
    _calculateTimeDifference();
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      _calculateTimeDifference();
    });
  }

  void _calculateTimeDifference() {
    DateTime matchDate = DateTime(2024, 8, 12); // Replace with your match date
    DateTime currentDate = DateTime.now();
    setState(() {
      _timeDifference = matchDate.difference(currentDate);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          right: MediaQuery.of(context).size.width / 20,
          bottom: MediaQuery.of(context).size.height / 20,
          top: MediaQuery.of(context).size.height / 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Next Match in",
            style: kSectionSubheadingTextStyle.copyWith(color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/FC_Logo.png',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Chelsea",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 80,
              ),
              Column(
                children: [
                  Text('Premier League',
                      style:
                          kSectionSubheadingTextStyle.copyWith(fontSize: 16)),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                          '${_timeDifference.inDays}D : ${_timeDifference.inHours % 24}H : ${_timeDifference.inMinutes % 60}M',
                          style: kSectionSubheadingTextStyle.copyWith(
                              fontSize: 34, fontWeight: FontWeight.w900)),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Saint James Park stadium",
                          style: kSectionSubheadingTextStyle.copyWith(
                            fontSize: 14,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "12th July",
                        style: kSectionSubheadingTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
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
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Leicester C",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
