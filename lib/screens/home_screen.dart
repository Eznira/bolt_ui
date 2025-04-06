import 'package:bolt_ui/constants/app_color.dart';
import 'package:bolt_ui/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              child: DraggableScrollableSheet(builder: (context, controller) {
                return Material(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 4,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade300,
                          child: ListTile(
                            shape: CircleBorder(),
                            leading: CircleAvatar(
                              radius: 16,
                              child: Icon(
                                Icons.search,
                                color: Colors.grey.shade700,
                              ),
                              backgroundColor: Colors.grey.shade400,
                            ),
                            title: Text(
                              "Where to?",
                              style: AppTextStyle.body1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
