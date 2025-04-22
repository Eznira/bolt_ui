import 'package:bolt_ui/screens/profile/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_color.dart';
import '../../widgets/custom_list_tile.dart';
import '../../widgets/logout_confirmation_dialog.dart';
import 'custom_bottom_sheet.dart';
import 'delete_account.dart';
import 'new_place.dart'; // Import the custom widget

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _showBottomSheet(BuildContext context, Widget widget) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
      ),
      builder: (BuildContext bc) {
        return widget;
      },
    );
  }

  void showHomeBottomSheet() => _showBottomSheet(
        context,
        const CustomBottomSheet(
            title: "Home",
            subtitle: "ABC Transport Jibowu "
                "Terminal, 22 Ikorodu Road, Ikeja"),
      );

  void showWorkBottomSheet() => _showBottomSheet(
      context,
      const CustomBottomSheet(
        title: "Work",
        subtitle: "General Hospital Lagos, Lagos Island",
      ));

  void _onLogoutTap() {
    showLogoutConfirmationDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: AppColors.grey3,
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Material(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BackButton(),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PersonalInfo()),
                                );
                              },
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                              color: AppColors.grey3,
                              borderRadius: BorderRadius.circular(40.sp),
                            ),
                            child: Icon(
                              Icons.person,
                              color: AppColors.grey2,
                              size: 28.sp,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Arinze Ihim",
                                style: AppTextStyle.title1,
                              ),
                              Text(
                                "+23408078140648",
                                style: AppTextStyle.body2,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.sp,
                              vertical: 14.sp,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: AppColors.grey2,
                                  size: 28.sp,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "ihimarinze@gmail.com",
                                  style: AppTextStyle.body1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 4.sp,
                              horizontal: 12.sp,
                            ),
                            child: Text(
                              "Saved places",
                              style: AppTextStyle.title1,
                            ),
                          ),
                          CustomProfileListTile(
                            leadingIcon: Icons.home_outlined,
                            title: "Home",
                            subtitle: "ABC Transport Jibowu Terminal, 22 ...",
                            navigateTo: () {
                              showHomeBottomSheet();
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: SizedBox(
                              height: 4.sp,
                              child: Divider(
                                height: 4.sp,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                          CustomProfileListTile(
                            leadingIcon: Icons.shop_outlined,
                            title: "Enter work location",
                            navigateTo: () {
                              showWorkBottomSheet();
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: SizedBox(
                              height: 4.sp,
                              child: Divider(
                                height: 4.sp,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                          CustomProfileListTile(
                            leadingIcon: Icons.add_outlined,
                            title: "Add a place",
                            navigateTo: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewPlace()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.sp,
                              vertical: 4.sp,
                            ),
                            child: Text(
                              "More",
                              style: AppTextStyle.title1,
                            ),
                          ),
                          CustomProfileListTile(
                            leadingIcon: Icons.language_outlined,
                            title: "Language",
                            subtitle: "English - GB",
                            navigateTo: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: SizedBox(
                              height: 4.sp,
                              child: Divider(
                                height: 4.sp,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                          CustomProfileListTile(
                            leadingIcon: Icons.announcement_outlined,
                            title: "Community preferences",
                            navigateTo: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.sp,
                              vertical: 4.sp,
                            ),
                            child: Text(
                              "Account",
                              style: AppTextStyle.title1,
                            ),
                          ),
                          CustomProfileListTile(
                            leadingIcon: Icons.logout_outlined,
                            title: "Log out",
                            navigateTo: () {
                              _onLogoutTap();
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: SizedBox(
                              height: 4.sp,
                              child: Divider(
                                height: 4.sp,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                          CustomProfileListTile(
                            leadingIcon: Icons.delete_outline,
                            title: "Delete account",
                            navigateTo: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (builder) => DeleteAccount()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  height: 20.sp,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
