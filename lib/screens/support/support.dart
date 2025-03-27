import 'package:bolt_ui/constants/app_color.dart';
import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButton(
              color: Colors.grey.shade700,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              child: Text(
                "How can we help?",
                style: AppTextStyle.title1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 12,
              ),
              child: Text(
                "Support Cases",
                style: AppTextStyle.title3,
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.chat,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
              title: Text(
                "Inbox",
                style: AppTextStyle.body1,
              ),
              subtitle: Text(
                "View open chats",
                style: AppTextStyle.body2,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              child: Text(
                "Get help with a recent ride",
                style: AppTextStyle.title3,
              ),
            ),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.car_crash_outlined,
                    color: Colors.grey.shade700,
                    size: 25,
                  ),
                ),
                title: Text(
                  "no1 Balogun Lane, Lagos, Nigeria",
                  style: AppTextStyle.body1,
                ),
                subtitle: Text(
                  "Oct 28, 8:05 PM",
                  style: AppTextStyle.body2,
                ),
                trailing: Text(
                  "Failed",
                  style: AppTextStyle.body4,
                )),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Divider(color: Colors.grey),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.car_crash_outlined,
                  color: Colors.grey.shade700,
                  size: 25,
                ),
              ),
              title: Text(
                "49 Adisa Bashua Street, Lagos, Nigeria",
                style: AppTextStyle.body1,
              ),
              subtitle: Text(
                "Oct 26, 7:51 AM",
                style: AppTextStyle.body2,
              ),
              trailing: Text(
                "#1200",
                style: AppTextStyle.body1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 12,
              ),
              child: Text(
                "Select an older ride",
                style: AppTextStyle.body5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              child: Text(
                "Get help with something else",
                style: AppTextStyle.title3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "About Bolt",
                        style: AppTextStyle.body1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Divider(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "App and features",
                        style: AppTextStyle.body1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Divider(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "Account and data",
                        style: AppTextStyle.body1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Divider(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "Payment and pricing",
                        style: AppTextStyle.body1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Divider(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "Using Bolt",
                        style: AppTextStyle.body1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Divider(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "Bolt Scooters",
                        style: AppTextStyle.body1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
