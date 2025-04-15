import 'package:bolt_ui/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _UpdateInfoState();
}

class _UpdateInfoState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButton(
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: Text(
                      "About",
                      style: AppTextStyle.title1,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                    child: Text(
                      "Version CA.107.0",
                      style: AppTextStyle.title3,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Icon(
                                Icons.star_border_purple500_sharp,
                                size: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "Rate the app",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 4,
                      child: Divider(
                        height: 4,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "Like us on Facebook",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 4,
                      child: Divider(
                        height: 4,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Icon(
                                Icons.shopping_bag_outlined,
                                size: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "Solutions for work rides",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                size: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "Careers at Bolt",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 4,
                      child: Divider(
                        height: 4,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Icon(
                                Icons.cabin_outlined,
                                size: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "Legal",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 4,
                      child: Divider(
                        height: 4,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Icon(
                                Icons.restore_page_outlined,
                                size: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "Acknowledgements",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 4,
                      child: Divider(
                        height: 4,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Icon(
                                Icons.restore_page_outlined,
                                size: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "Privacy",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20.sp,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Made with",
                    style: AppTextStyle.title3,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 14,
                    ),
                  ),
                  Text(
                    "in Nigeria",
                    style: AppTextStyle.title3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
