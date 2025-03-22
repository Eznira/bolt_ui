import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 10),
              child: ListTile(
                  leading: Icon(
                    Icons.account_circle_rounded,
                    size: 42,
                  ),
                  title: Text('Arinze'),
                  subtitle: Text('My acount'),
                  onTap: () {
                    // TODO: Route to profile page
                    // Handle navigation to messages
                    //Navigator.pop(context); // Close the drawer
                  }),
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
                ListTile(
                  leading: const Icon(Icons.account_balance_wallet_outlined),
                  title: const Text('Payment'),
                  onTap: () {
                    // Handle navigation to messages
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.label_important_outline),
                  title: const Text('Promotions'),
                  subtitle: const Text('Enter promo code'),
                  onTap: () {
                    // Handle navigation to profile
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.query_builder_outlined),
                  title: const Text('My Rides'),
                  onTap: () {
                    // Handle navigation to settings
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_bag_outlined),
                  title: const Text('Work Profile'),
                  onTap: () {
                    // Handle navigation to settings
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contact_support_outlined),
                  title: const Text('Support'),
                  onTap: () {
                    // Handle navigation to settings
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info_outline_rounded),
                  title: const Text('About'),
                  onTap: () {
                    // Handle navigation to settings
                    Navigator.pop(context); // Close the drawer
                  },
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
                borderRadius: BorderRadius.only(
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
