import 'package:bolt_ui/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.grey3,
      width: MediaQuery.of(context).size.width * 0.8,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
                        leading: Icon(
                          Icons.account_circle_rounded,
                          size: 42,
                          color: AppColors.grey2,
                        ),
                        title: Text(
                          'Arinze',
                          style: AppTextStyle.title1,
                        ),
                        subtitle: Text(
                          'My acount',
                          style:
                              TextStyle(color: Colors.green, fontSize: 14.sp),
                        ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Material(
                          child: ListTile(
                            leading: Icon(
                              Icons.account_balance_wallet_outlined,
                              color: AppColors.grey2,
                              size: 28.r,
                            ),
                            title: Text(
                              'Payment',
                              style: AppTextStyle.body1,
                            ),
                            onTap: () {
                              Navigator.pop(context); // Close the drawer
                              Navigator.pushNamed(context, "/payment");
                            },
                          ),
                        ),
                        Material(
                          child: ListTile(
                            leading: Icon(
                              Icons.label_important_outline,
                              color: AppColors.grey2,
                              size: 28.r,
                            ),
                            title: Text(
                              'Promotions',
                              style: AppTextStyle.body1,
                            ),
                            subtitle: Text(
                              'Enter promo code',
                              style: AppTextStyle.body2,
                            ),
                            onTap: () {
                              // Handle navigation to profile
                              Navigator.pop(context); // Close the drawer
                              Navigator.pushNamed(context, "/promotions");
                            },
                          ),
                        ),
                        Material(
                          child: ListTile(
                            leading: Icon(
                              Icons.query_builder_outlined,
                              color: AppColors.grey2,
                              size: 28.r,
                            ),
                            title: Text(
                              'My Rides',
                              style: AppTextStyle.body1,
                            ),
                            onTap: () {
                              Navigator.pop(context); // Close the drawer
                              Navigator.pushNamed(context, "/my_rides");
                            },
                          ),
                        ),
                        Material(
                          child: ListTile(
                            leading: Icon(
                              Icons.shopping_bag_outlined,
                              color: AppColors.grey2,
                              size: 28.r,
                            ),
                            title: Text(
                              'Work Profile',
                              style: AppTextStyle.body1,
                            ),
                            onTap: () {
                              Navigator.pop(context); // Close the drawer
                              Navigator.pushNamed(context, "/work_profile");
                            },
                          ),
                        ),
                        Material(
                          child: ListTile(
                            leading: Icon(
                              Icons.contact_support_outlined,
                              color: AppColors.grey2,
                              size: 28.r,
                            ),
                            title: Text(
                              'Support',
                              style: AppTextStyle.body1,
                            ),
                            onTap: () {
                              // Handle navigation to settings
                              Navigator.pop(context); // Close the drawer
                              Navigator.pushNamed(context, "/support");
                            },
                          ),
                        ),
                        Material(
                          child: ListTile(
                            leading: Icon(
                              Icons.info_outline_rounded,
                              color: AppColors.grey2,
                              size: 28.r,
                            ),
                            title: Text(
                              'About',
                              style: AppTextStyle.body1,
                            ),
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
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              height: 40.r,
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
