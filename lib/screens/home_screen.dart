import 'dart:ui';

import 'package:bolt_ui/constants/app_color.dart';
import 'package:bolt_ui/utils/util.dart';
import 'package:bolt_ui/widgets/app_drawer.dart';
import 'package:bolt_ui/widgets/custom_form_feild2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _destinationController = TextEditingController();
  final _currentLocationController = TextEditingController();
  final _destinationFocusNode = FocusNode();
  final _currentLocationFocusNode = FocusNode();

  final scrollController = ScrollController();

  double cardSize = 0.0;
  final maxSheetSize = 0.967;
  final topSheetHeight = 190;

  void onScroll(double scrollExtent) {
    setState(() {
      cardSize = 2 * scrollExtent - maxSheetSize;

      print("scroll $scrollExtent");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const MyDrawer(),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(
              bottom: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset(
                "assets/images/demo_map.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 8,
              ),
              child: Material(
                color: Colors.white,
                shape: const CircleBorder(),
                child: Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                }),
                child: NotificationListener<DraggableScrollableNotification>(
                  onNotification: (notification) {
                    onScroll(notification.extent);
                    return true;
                  },
                  child: DraggableScrollableSheet(
                      maxChildSize: maxSheetSize,
                      initialChildSize: 0.4,
                      minChildSize: 0.4,
                      snapSizes: [
                        maxSheetSize,
                      ],
                      builder: (context, controller) {
                        return Material(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(),
                            child: ListView(
                              shrinkWrap: true,
                              controller: controller,
                              children: [
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.all(10.0),
                                    height: 4,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey.shade300,
                                    child: SizedBox(
                                      height: 50,
                                      child: ListTile(
                                        shape: const CircleBorder(),
                                        leading: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.grey.shade400,
                                          child: Icon(
                                            Icons.search,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                        title: Text(
                                          "Where to?",
                                          style: AppTextStyle.body1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.grey.shade300,
                                          child: SizedBox(
                                            height: 50,
                                            child: ListTile(
                                              leading: Icon(
                                                  Icons.local_offer_outlined),
                                              title: Text(
                                                "Promotions",
                                                style: AppTextStyle.body1,
                                              ),
                                              subtitle: Text(
                                                "subtitles",
                                                style: AppTextStyle.body2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.grey.shade300,
                                          child: SizedBox(
                                            height: 50,
                                            child: ListTile(
                                              leading: const Icon(
                                                  Icons.card_giftcard_outlined),
                                              title: Text(
                                                "Vouchers",
                                                style: AppTextStyle.body1,
                                              ),
                                              subtitle: Text(
                                                " vouchers",
                                                style: AppTextStyle.body2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey.shade300,
                                    child: SizedBox(
                                      height: 50,
                                      child: ListTile(
                                        shape: const CircleBorder(),
                                        leading: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.grey.shade400,
                                          child: Icon(
                                            Icons.search,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                        title: Text(
                                          "Where to?",
                                          style: AppTextStyle.body1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey.shade300,
                                    child: SizedBox(
                                      height: 50,
                                      child: ListTile(
                                        shape: const CircleBorder(),
                                        leading: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.grey.shade400,
                                          child: Icon(
                                            Icons.search,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                        title: Text(
                                          "Where to?",
                                          style: AppTextStyle.body1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey.shade300,
                                    child: SizedBox(
                                      height: 50,
                                      child: ListTile(
                                        shape: const CircleBorder(),
                                        leading: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.grey.shade400,
                                          child: Icon(
                                            Icons.search,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                        title: Text(
                                          "Where to?",
                                          style: AppTextStyle.body1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: -topSheetHeight * (1 - cardSize),
              child: Opacity(
                opacity: mapRange(
                  cardSize,
                  -(maxSheetSize),
                  maxSheetSize,
                  0.0,
                  1.0,
                ),
                child: SizedBox(
                  height: 190,
                  child: Material(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.cancel),
                                  ),
                                  Text(
                                    "Your routes",
                                    style: AppTextStyle.title2,
                                  )
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Material(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                            child: Column(
                              children: [
                                CustomFormField2(
                                  hintText: "Adefemihan street",
                                  controller: _currentLocationController,
                                  focusNode: _currentLocationFocusNode,
                                ),
                                CustomFormField2(
                                  hintText: "Destination",
                                  controller: _destinationController,
                                  focusNode: _destinationFocusNode,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
