import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 10),
              child: Material(
                child: ListTile(
                  style: ListTileStyle.drawer,
                  subtitleTextStyle: const TextStyle(color: Colors.green),
                  leading: const Icon(
                    Icons.account_circle_rounded,
                    size: 42,
                  ),
                  title: const Text('Arinze'),
                  subtitle: const Text('My acount'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.pushNamed(context, "/profile");
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Material(
                  child: ListTile(
                    leading: const Icon(Icons.account_balance_wallet_outlined),
                    title: const Text('Payment'),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                      Navigator.pushNamed(context, "/payment");
                    },
                  ),
                ),
                Material(
                  child: ListTile(
                    leading: const Icon(Icons.label_important_outline),
                    title: const Text('Promotions'),
                    subtitle: const Text('Enter promo code'),
                    onTap: () {
                      // Handle navigation to profile
                      Navigator.pop(context); // Close the drawer
                      Navigator.pushNamed(context, "/promotions");
                    },
                  ),
                ),
                Material(
                  child: ListTile(
                    leading: const Icon(Icons.query_builder_outlined),
                    title: const Text('My Rides'),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                      Navigator.pushNamed(context, "/my_rides");
                    },
                  ),
                ),
                Material(
                  child: ListTile(
                    leading: const Icon(Icons.shopping_bag_outlined),
                    title: const Text('Work Profile'),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                      Navigator.pushNamed(context, "/work_profile");
                    },
                  ),
                ),
                Material(
                  child: ListTile(
                    leading: const Icon(Icons.contact_support_outlined),
                    title: const Text('Support'),
                    onTap: () {
                      // Handle navigation to settings
                      Navigator.pop(context); // Close the drawer
                      Navigator.pushNamed(context, "/support");
                    },
                  ),
                ),
                Material(
                  child: ListTile(
                    leading: const Icon(Icons.info_outline_rounded),
                    title: const Text('About'),
                    onTap: () {
                      // Handle navigation to settings
                      Navigator.pop(context); // Close the drawer
                      Navigator.pushNamed(context, "/about");
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
