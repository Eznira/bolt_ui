import 'package:bolt_ui/constants/app_color.dart';
import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(
                      Icons.car_crash_outlined,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "no 1, Balogun lane, Lagos..",
                        style: AppTextStyle.body1,
                      ),
                      Text(
                        "28, Oct, 20:00",
                        style: AppTextStyle.body2,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "# 2,00",
                        style: AppTextStyle.title3,
                      ),
                      Text(
                        "Trip Cancelled",
                        style: AppTextStyle.body2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade600,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
