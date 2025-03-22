import 'package:bolt_ui/constants/app_color.dart';
import 'package:bolt_ui/widgets/my_tile.dart';
import 'package:flutter/material.dart';

class MyTrips extends StatefulWidget {
  const MyTrips({super.key});

  @override
  State<MyTrips> createState() => _MyTripsState();
}

class _MyTripsState extends State<MyTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "My Trips",
              style: AppTextStyle.title1,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "All",
                style: AppTextStyle.title2,
              ),
              Text(
                "Personal",
                style: AppTextStyle.title2,
              ),
              Text(
                "Work",
                style: AppTextStyle.title2,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: PageView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "October 2022",
                          style: AppTextStyle.title3,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      MyTile(),
                      MyTile(),
                      MyTile(),
                      MyTile(),
                      MyTile(),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "November 2022",
                          style: AppTextStyle.title3,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      MyTile(),
                      MyTile(),
                      MyTile(),
                      MyTile(),
                      MyTile(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
